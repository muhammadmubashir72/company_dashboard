// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names, unused_local_variable, unnecessary_null_comparison, file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class violationListScreen extends StatefulWidget {
  @override
  State<violationListScreen> createState() => _violationListScreenState();
}

class _violationListScreenState extends State<violationListScreen> {
  TextEditingController _textEditingController = TextEditingController();

  String selectedCompany = 'Select a company';
  String selectedTicket = 'Select a ticket';

  String? selectedViolation;
  String? selectedPriority;
  String? selectedType;
  String? selectedCamera;
  String? selectedFavourite;
  String? selectedCategory;
  String? selectedUnit;


  DateTime? startDate;
  DateTime? endDate;
  Future<void> startDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
      });
    }
  }

  Future<void> endDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != endDate) {
      setState(() {
        endDate = picked;
      });
    }
  }

  List<String> companies = [
    'Select a company',
    'Company A',
    'Company B',
    'Company C',
    'Company D',
    'Company E',
    'Company F',
    'Company G',
    'Company H',
    'Company I',
    'Company J',
    'Company K',
    'Company L',
    'Company M',
    'Company N',
    'Company O',
    'Company P',
    'Company Q',
    'Company R',
    'Company S',
    'Company T',
  ];

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

  @override
  Widget build(BuildContext context) {
    double _textFieldHeight = 55.0;
    double _dropFieldHeight = 47.5;

    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Violation Screen '),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30, right: 55, left: 55),
          padding: EdgeInsets.all(20),
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.camera_alt), // Add your desired icon here
                  SizedBox(width: 8), // Adjust spacing as needed
                  Text(
                    'Unit Violation',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedCompany,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCompany = newValue!;
                              });
                            },
                            style: TextStyle(
                              fontSize: 14.0,
                              // Adjust the font size as needed
                              color: Colors.black,
                            ),
                            underline: Container(), isExpanded: true,
                            // Remove the default underline
                            icon: Icon(Icons.arrow_drop_down),
                            // Change the dropdown icon
                            hint: Text("Select Company"),
                            items: companies
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('VIOLATION '),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedViolation,
                            items: <String>['VIOLATION 1 ', "VIOLATION 2", "VIOLATION 3", "VIOLATION 4"]
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedViolation = newValue!;
                              });
                            },
                            style: TextStyle(fontSize: 16.0),
                            underline: Container(
                                // height: 2,
                                // color: Colors.grey,
                                ),
                            icon: Icon(Icons.arrow_drop_down),
                            // hint: Text("Select Violation"),
                            isExpanded: true,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
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
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  startDate != null
                                      ? "${DateFormat('yyyy-MM-dd').format(startDate!)}"
                                      : "mm/dd/yyyy",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.date_range),
                                onPressed: () {
                                  StartDate(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('TITCKET CREATED '),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedViolation,
                            items: <String>['TITCKET 1', "TITCKET 2", "TITCKET 3", "TITCKET 4"]
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedViolation = newValue!;
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

                  // Second Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('UNIT '),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedUnit,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedUnit = newValue!;
                              });
                            },
                            style: TextStyle(
                              fontSize: 14.0,
                              // Adjust the font size as needed
                              color: Colors.black,
                            ),
                            underline: Container(), 
                            isExpanded: true,
                            // Remove the default underline
                            icon: Icon(Icons.arrow_drop_down),
                            // Change the dropdown icon
                            items: <String>["UNIT 1","UNIT 2","UNIT 3","UNIT 4"]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),

                        SizedBox(height: 20.0),
                        Text('TYPE '),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedType,
                            items: <String>['Image', "Video"]
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedType = newValue!;
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

                        SizedBox(
                          height: 20.0,
                        ),
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
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  endDate != null
                                      ? "${DateFormat('MM-dd-yyyy').format(endDate!)}"
                                      : "mm/dd/yyyy",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.date_range),
                                onPressed: () {
                                  EndDate(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('VIOLATION CATEGORY '),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedCategory,
                            items: <String>['CATEGORY 1', "CATEGORY 2", "CATEGORY 3", "CATEGORY 4"]
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedCategory = newValue!;
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
                  // // // Third Column

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('STORE CAMERA'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedCamera,
                            items: <String>[
                              'STORE CAMERA 1',
                              "STORE CAMERA 2",
                              "STORE CAMERA 3"
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedCamera = newValue!;
                              });
                            },
                            style: TextStyle(fontSize: 16.0),
                            underline: Container(
                                // height: 2,
                                // color: Colors.grey,
                                ),
                            icon: Icon(Icons.arrow_drop_down),
                            hint: Text("Select All"),
                            isExpanded: true,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('SHOW FAVOURITE '),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedFavourite,
                            items: <String>[
                              'FAVOURITE 1',
                              "FAVOURITE 2",
                              "FAVOURITE 3",
                              "FAVOURITE 4"
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedFavourite = newValue!;
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
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('PRIORITY '),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _dropFieldHeight,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<String>(
                            value: selectedViolation,
                            items: <String>[
                              'PRIORITY 1',
                              "PRIORITY 2",
                              "PRIORITY 3",
                              "as"
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedPriority = newValue!;
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
