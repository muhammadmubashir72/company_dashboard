// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace, unnecessary_cast, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class agentViolationSummaryScreen extends StatefulWidget {
  @override
  State<agentViolationSummaryScreen> createState() =>
      _agentViolationSummaryScreenState();
}

class _agentViolationSummaryScreenState
    extends State<agentViolationSummaryScreen> {
  String? selectedCompany; // Variable to store selected company
  String? selectedUserType; // Variable to store selected user type
  bool? isAdmin; // Variable to store whether user is admin or not

  @override
  Widget build(BuildContext context) {
    double _textFieldHeight = 55.0;
    double _dropFieldHeight = 47.5;

    DateTime? startDate;
    DateTime? endDate;

    Future<void> StartDate(BuildContext context) async {
      final DateTime picked = (await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      ))!;

      if (picked != null && picked != startDate) {
        setState(() {
          startDate = picked;
        });
      }
    }

    Future<void> EndDate(BuildContext context) async {
      final DateTime picked = (await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      ))!;

      if (picked != null && picked != endDate) {
        setState(() {
          endDate = picked;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(' AGENTS VIOLATIONS'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30, right: 55, left: 55),
          padding: EdgeInsets.all(20),
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     Icon(Icons
              //         .error_outline_outlined), // Add your desired icon here
              //     SizedBox(width: 8), // Adjust spacing as needed
              //     Text(
              //       'AGENTS VIOLATIONS',
              //       style: TextStyle(
              //         color: Colors.orange,
              //         fontSize: 24.0,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('COMPANY'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                            0.2, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedCompany,
                            items: <String>[
                              'Company A',
                              'Company B',
                              'Company C'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedCompany = newValue!;
                              });
                            },
                            style: TextStyle(fontSize: 16.0),
                            underline: Container(
                                // height: 2,
                                // color: Colors.grey,
                                ),
                            icon: Icon(Icons.arrow_drop_down),
                            hint: Text("Select Company"),
                            isExpanded: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0), // Adjust spacing between columns
                  // Second Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('UNIT'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                            0.2, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedCompany,
                            items: <String>['Unit A', 'Unit B', 'Unit C']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedCompany = newValue!;
                              });
                            },
                            style: TextStyle(fontSize: 16.0),
                            underline: Container(
                                // height: 2,
                                // color: Colors.grey,
                                ),
                            icon: Icon(Icons.arrow_drop_down),
                            hint: Text("All"),
                            isExpanded: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0), // Adjust spacing between columns
                  // Third Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START_DATE",
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            // color: Colors.purple,
                            // color:  Color(0xffC822FF),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width *
                            0.2, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                padding: EdgeInsets.only(bottom: 5),
                                icon: Icon(
                                  Icons.date_range,
                                ),
                                onPressed: () {
                                  StartDate(context);
                                },
                              ),
                              Expanded(
                                child: Text(
                                  startDate != null
                                      ? "${DateFormat('MM-dd-yyyy').format(startDate!)}"
                                      : "Select a date",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0), // Adjust spacing between columns

                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "END DATE",
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          // color: Colors.purple,
                          // color:  Color(0xffC822FF),
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width *
                            0.2, // Use 30% of screen width
                        height: _dropFieldHeight,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.only(bottom: 5),
                              icon: Icon(
                                Icons.date_range,
                              ),
                              onPressed: () {
                                StartDate(context);
                              },
                            ),
                            Expanded(
                              child: Text(
                                endDate != null
                                    ? "${DateFormat('MM-dd-yyyy').format(endDate!)}"
                                    : "Select a date",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
                ],
              ),
              Divider(
                height: 60,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              // SizedBox(height: 20.0), // Add spacing after the last row
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    excludeFromSemantics: true,
                    onTap: () {
                      // Add your search functionality here
                      print("Search button pressed!");
                    },
                    child: Container(
                      // margin: EdgeInsets.only(
                      //   right: 55,
                      // ),
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Color(0xff1A6DFF),
                            Color(0xffC822FF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Search',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
