import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatefulWidget {
  final List<GButton> tabs;
  final List<Widget> views;

  GoogleNavBar({this.tabs, this.views});

  @override
  _GoogleNavBarState createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("UsedDefaultTabBar"),
        ),
        body: widget.views[tabIndex],
        bottomNavigationBar: GNav(
          gap: 8,
          activeColor: Colors.white,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          duration: Duration(milliseconds: 300),
          tabBackgroundColor: Colors.grey[800],
          selectedIndex: tabIndex,
          onTabChange: (i) => setState(() {
            tabIndex = i;
          }),
          tabs: widget.tabs,
        ));
  }
}
