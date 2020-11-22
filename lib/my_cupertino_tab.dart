import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyCupertinoTab extends StatefulWidget {
  final List<BottomNavigationBarItem> tabs;
  final List<Widget> views;

  MyCupertinoTab({this.tabs, this.views});

  @override
  _MyCupertinoTabState createState() => _MyCupertinoTabState();
}

class _MyCupertinoTabState extends State<MyCupertinoTab> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UsedDefaultTabBar"),
      ),
      body: widget.views[tabIndex],
      bottomNavigationBar: CupertinoTabBar(
        // selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.deepOrange,
        currentIndex: tabIndex,
        onTap: (i) => setState(() {
          tabIndex = i;
        }),
        items: widget.tabs,
      ),
    );
  }
}