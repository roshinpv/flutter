import 'package:flutter/material.dart';
import 'package:ui_one/features/auth/presentation/pages/search_page.dart';


class LandingPage extends StatefulWidget {
   static const String id = "landing_page";

  const LandingPage({super.key});

  @override
  State<LandingPage> createState() =>
      _LandingPageState();
}

class _LandingPageState
    extends State<LandingPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    SearchScreen(),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(child: Scaffold(
      resizeToAvoidBottomInset: false,
      
      
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
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
       iconSize: 35,
        selectedItemColor: const Color.fromRGBO(211, 15, 15, 1),
        onTap: _onItemTapped,
      ),
    ));
  }
}
