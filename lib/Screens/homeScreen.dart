// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool showUserListTiles = false;
  bool showUnitListTiles = false;
  bool showSettingListTiles = false;

  final GlobalKey actionKey = GlobalKey();

  String selectedCompany = 'Select a company';
  List<String> companies = [
    'Select a company', // Add this line
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
  String selectedUnit = 'Select a unit';
  List<String> units = [
    'Select a unit',
    'Unit 1',
    'Unit 2',
    'Unit 3',
    'Unit 4',
    'Unit 5',
    'Unit 6',
    'Unit 7',
    'Unit 8',
    'Unit 9',
    'Unit 10',
    'Unit 11',
    'Unit 12',
    'Unit 13',
    'Unit 14',
    'Unit 15',
    'Unit 16',
    'Unit 17',
    'Unit 18',
    'Unit 19',
    'Unit 20',
  ];
  String selectedCountry = 'Select a country';
  List<String> countries = [
    'Select a country',
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'Italy',
    'India',
    'Japan',
    'China',
    'Australia',
    'Brazil',
    'South Africa',
    'Mexico',
    'Russia',
    'South Korea',
    'Spain',
    'Netherlands',
    'Sweden',
    'Norway',
  ];

  DateTime? startDate;
  DateTime? endDate;

  // Future<void> _selectDate(BuildContext context, bool isStartDate) async {
  //   final DateTime picked = (await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2101),
  //   ))!;
  //
  //   if (picked != null) {
  //     setState(() {
  //       if (isStartDate) {
  //         startDate = picked;
  //       } else {
  //         endDate = picked;
  //       }
  //     });
  //   }
  // }

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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: Drawers(),
        appBar: appBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              color: Colors.black12,
              margin: EdgeInsets.only(top: 30, right: 55, left: 55),
              padding: EdgeInsets.symmetric(vertical: 25),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "COMPANY",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            // color:  Color(0xffC822FF),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 55,
                          padding: EdgeInsets.only(left: 10, top: 4),
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
                            underline: Container(),
                            // Remove the default underline
                            icon: Icon(Icons.arrow_drop_down),
                            // Change the dropdown icon
                            items: companies
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "UNIT",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            // color:  Color(0xffC822FF),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 55,
                          padding: EdgeInsets.only(left: 10, top: 4),
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
                            // Remove the default underline
                            icon: Icon(Icons.arrow_drop_down),
                            // Change the dropdown icon
                            items: units
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "START_DATE",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            // color:  Color(0xffC822FF),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 55,
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
                                      : "Select a date",
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
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "END_DATE",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            // color:  Color(0xffC822FF),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 55,
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
                                      ? "${DateFormat('yyyy-MM-dd').format(endDate!)}"
                                      : "Select a date",
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
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 60,
                  thickness: 1,
                  indent: 55,
                  endIndent: 55,
                ),
                InkWell(
                  excludeFromSemantics: true,
                  onTap: () {
                    // Add your search functionality here
                    print("Search button pressed!");
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 55,
                    ),
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
                )
              ]),
            ),

            // ------------
            Container(
              margin: EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 270.0,
                        height: 120.0,
                        color: Colors.pinkAccent,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            // SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Violation Count',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                // SizedBox(width: 10.0),
                                Icon(
                                  Icons.warning_amber_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 270.0,
                        height: 120.0,
                        color: Colors.lime,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  child: Text(
                                    'Yesterday Violation Upload Count',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                // SizedBox(width: 10.0),
                                Icon(
                                  Icons.message_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 270.0,
                        height: 120.0,
                        color: Colors.orangeAccent,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Company\'s Top Violation',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),

                                // SizedBox(width: 10.0),
                                Icon(
                                  Icons.warning_amber_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 270.0,
                        height: 120.0,
                        color: Colors.brown.shade400,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 184,
                                  child: Text(
                                    'Company\'s Yesterday Top Violation.',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 40,
                                  weight: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 270.0,
                        height: 120.0,
                        color: Colors.blue,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            // SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  child: Text(
                                    'Rol',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                // SizedBox(width: 10.0),
                                Icon(
                                  Icons.attach_money_outlined,
                                  color: Colors.white,
                                  size: 40,
                                  weight: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 270.0,
                        height: 120.0,
                        color: Colors.amberAccent,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'My Tickets',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Icon(
                                  Icons.airplane_ticket_outlined,
                                  color: Colors.white,
                                  size: 40,
                                  weight: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }

  AppBar appBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black
          // color:  Color(0xffC822FF),
          ), // Change the icon color here
      backgroundColor: Color(0xff6DC7FF),
      actions: [
        Column(
          children: [
            Text(
              "Admin",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 2,
                  color: Colors.pinkAccent
                  // color:  Color(0xffC822FF),
                  ),
            ),
            Text(
              "ADMIN",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                // height: 2 ,
                color: Colors.purple,
                // color:  Color(0xffC822FF),
              ),
            ),
          ],
        ),
        Icon(Icons.person, color: Colors.black
            // color:  Color(0xffC822FF)
            ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down, color: Colors.black
                // color: Color(0xffC822FF),
                ))
      ],
    );
  }

  Drawer Drawers() {
    return Drawer(
      backgroundColor: Color(0xff6DC7FF),
      child: Container(
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.lighten,
          gradient: LinearGradient(
            colors: [
              Color(0xff6DC7FF),
              Color(0xffE6ABFF),
              Color(0xff1A6DFF),
              Color(0xffC822FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/logo.png"),
            ),
            ListTile(
              leading: Icon(Icons.dashboard_outlined, color: Colors.purple),
              title: Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              hoverColor: Colors.purple.withOpacity(0.2),
              onTap: () {
                // Handle the tap on Dashboard
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: showUserListTiles
                    ? Colors.deepPurpleAccent
                    : Colors.purple, // Change color based on state
              ),
              title: Text(
                'Users',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              trailing: Icon(
                showUserListTiles
                    ? Icons
                        .keyboard_arrow_down_outlined // Change icon when open
                    : Icons.keyboard_arrow_right_outlined, // Default icon
                color: Colors.purple,
              ),
              hoverColor: Colors.purple.withOpacity(0.2),
              onTap: () {
                setState(() {
                  showUserListTiles = !showUserListTiles;
                });
              },
            ),
            if (showUserListTiles)
              Column(
                children: [
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'User',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 25),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Assign Unit',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 25),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Unit Camera',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ListTile(
              leading: Icon(
                Icons.gpp_maybe_outlined,
                color: showUnitListTiles
                    ? Colors.deepPurpleAccent
                    : Colors.purple, // Change color based on state
              ),
              title: Text(
                'Unit Violations',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              trailing: Icon(
                showUnitListTiles
                    ? Icons
                        .keyboard_arrow_down_outlined // Change icon when open
                    : Icons.keyboard_arrow_right_outlined, // Default icon
                color: Colors.purple,
              ),
              hoverColor: Colors.purple.withOpacity(0.2),
              onTap: () {
                setState(() {
                  showUnitListTiles = !showUnitListTiles;
                });
              },
            ),
            if (showUnitListTiles)
              Column(
                children: [
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Unit Violation',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Violation List',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Approval Violations',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Agents Violation Report',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Violations Summary',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    // Adjust the height as needed to match ListTile height
                    child: InkWell(
                      onTap: () {
                        // Handle tap on User
                      },
                      hoverColor: Colors.purple.withOpacity(0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple),
                          SizedBox(width: 10),
                          Text(
                            'Agent Violations Summary',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: showSettingListTiles
                    ? Colors.deepPurpleAccent
                    : Colors.purple, // Change color based on state
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              trailing: Icon(
                showSettingListTiles
                    ? Icons
                        .keyboard_arrow_down_outlined // Change icon when open
                    : Icons.keyboard_arrow_right_outlined, // Default icon
                color: Colors.purple,
              ),
              hoverColor: Colors.purple.withOpacity(0.2),
              onTap: () {
                setState(() {
                  showSettingListTiles = !showSettingListTiles;
                });
              },
            ),
            if (showSettingListTiles)
              Container(
                height: 56,
                // Adjust the height as needed to match ListTile height
                child: InkWell(
                  onTap: () {
                    // Handle tap on User
                  },
                  hoverColor: Colors.purple.withOpacity(0.2),
                  child: Row(
                    children: [
                      SizedBox(width: 30),
                      Icon(Icons.keyboard_arrow_right_outlined,
                          color: Colors.purple),
                      SizedBox(width: 10),
                      Text(
                        'Global Parameters',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
