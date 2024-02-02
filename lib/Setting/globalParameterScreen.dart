// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace, unnecessary_cast, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class globalParameterScreen extends StatefulWidget {
  @override
  State<globalParameterScreen> createState() => _globalParameterScreenState();
}

class _globalParameterScreenState extends State<globalParameterScreen> {
  String? selectedCompany; // Variable to store selected company
  String? selectedUserType; // Variable to store selected user type
  bool? isAdmin; // Variable to store whether user is admin or not
  bool isTrue = false; // Initial value for dropdown

  @override
  Widget build(BuildContext context) {
    double _textFieldHeight = 55.0;
    double _dropFieldHeight = 47.5;

    return Scaffold(
      appBar: AppBar(
        title: Text('User Form'),
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
                  Icon(Icons.public), // Add your desired icon here
                  SizedBox(width: 8), // Adjust spacing as needed
                  Text(
                    ' GLOBAL PARAMETERS',
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
                        SizedBox(height: 20.0),
                        Text('HOST SMTP'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('HOST PASSWORD'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('HTTPS ENABLE'),
                        SizedBox(height: 7.0),
                        Container(
                          height: _dropFieldHeight,
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<bool>(
                            underline: Container(),
                            isExpanded: true,
                            value: isTrue,
                            onChanged: (bool? newValue) {
                              // Handle dropdown value change
                              isTrue = newValue!;
                            },
                            items: [
                              DropdownMenuItem<bool>(
                                value: true,
                                child: Text('True'),
                              ),
                              DropdownMenuItem<bool>(
                                value: false,
                                child: Text('False'),
                              ),
                            ],
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
                        Text('STORE TAG'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('HOST PORT'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('BASE URL'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('EMAIL WITH ATTACHMENT'),
                        SizedBox(height: 7.0),
                        Container(
                          height: _dropFieldHeight,
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton<bool>(
                            value: isTrue,
                            onChanged: (bool? newValue) {
                              // Handle dropdown value change
                              if (newValue != null) {
                                isTrue = newValue;
                              }
                            },
                            underline: Container(),
                            icon: Icon(Icons.arrow_drop_down), // Dropdown icon
                            hint: Text("Select Type"), // Hint text
                            isExpanded:
                                true, // Allow the dropdown to expand to full width
                            items: [
                              DropdownMenuItem<bool>(
                                value: true,
                                child: Text('True'),
                              ),
                              DropdownMenuItem<bool>(
                                value: false,
                                child: Text('False'),
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
                        Text('PAGE SIZE'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('HOST EMAIL'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text('TICKET SUBJECT'),
                        SizedBox(height: 7.0),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.3, // Use 30% of screen width
                          height: _textFieldHeight,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              // hintText: 'Enter Name',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
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
