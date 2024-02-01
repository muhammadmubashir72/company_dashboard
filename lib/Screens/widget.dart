// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool showUserListTiles = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(
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
                  onTap: () {
                    // Handle the tap on Dashboard
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Colors.purple),
                  title: Text(
                    'Users',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.purple),
                  onTap: () {
                    setState(() {
                      showUserListTiles = !showUserListTiles;
                    });
                  },
                ),
                if (showUserListTiles)
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.purple),
                        title: Text(
                          'User',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        hoverColor: Color(0xffE6ABFF),
                        contentPadding: EdgeInsets.only(left: 12),
                        onTap: () {
                          // Handle the tap on User
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.purple),
                        title: Text(
                          'Assign Unit',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        hoverColor: Color(0xffE6ABFF),
                        onTap: () {
                          // Handle the tap on Assign Unit
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.purple),
                        title: Text(
                          'Unit Camera',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        hoverColor: Color(0xffE6ABFF),
                        onTap: () {
                          // Handle the tap on Unit Camera
                        },
                      ),
                    ],
                  ),
                ListTile(
                  leading: Icon(Icons.gpp_maybe_outlined, color: Colors.purple),
                  title: Text(
                    'Unit Violations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.purple),
                  onTap: () {
                    // Handle the tap on Unit Violations
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.purple),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.purple),
                  onTap: () {
                    // Handle the tap on Settings
                  },
                ),
              ],
            ),
          ),
       )
    );
  }
}
class MyCustomDropdown extends StatefulWidget {
  @override
  _MyCustomDropdownState createState() => _MyCustomDropdownState();
}
class _MyCustomDropdownState extends State<MyCustomDropdown> {
  String selectedOption = 'Option 1'; // Default option
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedOption,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            selectedOption = newValue;
          });
        }
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}