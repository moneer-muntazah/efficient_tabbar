import 'package:flutter/material.dart';

class TapContainerBottom extends StatefulWidget {
  final List<BottomNavigationBarItem> tabs;
  final List<Widget> views;

  TapContainerBottom({this.tabs, this.views});

  @override
  _TapContainerBottomState createState() => _TapContainerBottomState();
}

class _TapContainerBottomState extends State<TapContainerBottom> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TapContainerBottom"),
      ),
      body: widget.views[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
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
