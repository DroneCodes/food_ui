import 'package:flutter/material.dart';

import '../menupages/home.dart';

class MenuPage extends StatefulWidget {

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int currentindex = 0;

  final screens = [
      Home(onChanged: (String value) { },),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: screens[currentindex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() => currentindex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home" ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_calendar_outlined),
              label: "Profile"),
        ],
      ),
    );
  }
}


