import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sanberappflutter/Final_Project/About.dart';
import 'package:sanberappflutter/Final_Project/Home_Screen.dart';
import 'package:sanberappflutter/Tugas/Tugas15/homescreen.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({Key? key}) : super(key: key);

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home_Screen(),
    HomeScreen(),
    About(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'List Anime',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'About me',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
