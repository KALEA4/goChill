import 'package:flutter/material.dart';
import 'package:reprise_1/pages/home.dart';
import 'package:reprise_1/pages/notifications.dart';
import 'package:reprise_1/pages/profile.dart';
import 'package:reprise_1/pages/tips.dart';
import 'package:reprise_1/widgets/bottom_navigation_bar.dart';

class BottomNavigationControl extends StatefulWidget {

  int index;
  BottomNavigationControl({this.index = 0});
  @override
  State<BottomNavigationControl> createState() => _BottomNavigationControlState();
}

class _BottomNavigationControlState extends State<BottomNavigationControl> {
  final pages = <Widget> [
    HomePage(),
    TipsPage(),
    Notifications(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[widget.index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarWidget(
          index: widget.index,
          onChangedTab: onChangedTab
      ),
    );
  }

  void onChangedTab(int index){
    setState((){
      widget.index = index;
    });
  }
}

