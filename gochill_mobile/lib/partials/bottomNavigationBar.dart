import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget{
  @override

  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>{
  @override
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      backgroundColor: Colors.black87,
      elevation: 4.0,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      selectedFontSize: 13.0,
      iconSize: 20.0,
      selectedIconTheme: IconThemeData(
          color: Colors.orange,
          size: 28
      ),
      unselectedIconTheme: IconThemeData(
          size: 28
      ),
      unselectedItemColor: Color(0xff5f5f5f),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_available),
          label: '',
        ),

      ],

      onTap: _onItemTapped,
    );
  }
}