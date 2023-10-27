import 'package:app/samplepage.dart';

import 'package:flutter/material.dart';
// import 'package:meal_minder/contact.dart';

bool isLoggedIn = false;

void main() {
  // Check if the user is logged in
 
    // Run the app
    runApp(MaterialApp(
      title: "Meal Minder",
      home: BottomMenu(),
    ));
  }

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return _BottomMenuState();
  }
}

class _BottomMenuState extends State<BottomMenu> {
  var _pagesData = [HomePage(), ContactPage(), AboutPage()];
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal Minder"),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: _pagesData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contact us"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Profile")
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
