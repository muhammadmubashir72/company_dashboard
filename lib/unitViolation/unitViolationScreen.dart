// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names, unused_local_variable, unnecessary_null_comparison, file_names, avoid_print

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class unitViolationScreen extends StatefulWidget {
  @override
  State<unitViolationScreen> createState() => _unitViolationScreenState();
}

class _unitViolationScreenState extends State<unitViolationScreen> {
  String? selectedCompany; // Variable to store selected company
  String? selectedUserType; // Variable to store selected user type
  bool? isAdmin; // Variable to store whether user is admin or not

  DateTime? Date;
  Future<void> StartDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ))!;

    if (picked != null && picked != Date) {
      setState(() {
        Date = picked;
      });
    }
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      // You can use the selected file as needed
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
                        Text('Company'),
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
    if (newValue != selectedCompany) { // Check if the new value is different
      setState(() {
        selectedCompany = newValue!;
      });
    }
  },
  style: TextStyle(fontSize: 16.0),
  underline: Container(),
  icon: Icon(Icons.arrow_drop_down),
  hint: Text("Select Company"),
  isExpanded: true,
),



                        ),
                        SizedBox(height: 20.0),
                        Text('Violation'),
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
                            items: <String>[
                              'Violation A',
                              'Violation B',
                              'Violation C'
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
                            hint: Text("Select Violation"),
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
                        Text('Unit'),
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
                            hint: Text("Select Unit"),
                            isExpanded: true,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          "Date",
                          // style: TextStyle(
                          //   fontSize: 16,
                          //   fontWeight: FontWeight.bold,
                          //   color: Colors.purple,
                          //   // color:  Color(0xffC822FF),
                          // ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
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
                                  Date != null
                                      ? "${DateFormat('yyyy-MM-dd').format(Date!)}"
                                      : "Select a date",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0), // Adjust spacing between columns
                  // Third Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Store Camera'),
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
                            items: <String>[
                              'Store Camera A',
                              'Store Camera B',
                              'Store Camera C'
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
                            hint: Text("Select Camera"),
                            isExpanded: true,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text("Select File"),
                        SizedBox(height: 7.0),
                        InkWell(
                          onTap: _pickFile,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 3,
                            height: _dropFieldHeight,
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons
                                    .file_upload), // Add your desired icon here
                                SizedBox(
                                    width:
                                        8), // Adjust spacing between icon and text
                                Text(
                                  'Choose File',
                                  style: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
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
                            'Save',
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
