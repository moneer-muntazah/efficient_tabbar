import 'package:flutter/material.dart';

class TapContainerBottomStack extends StatefulWidget {
  final List<BottomNavigationBarItem> tabs;
  final List<Widget> views;

  TapContainerBottomStack({this.tabs, this.views});

  @override
  _TapContainerBottomStackState createState() =>
      _TapContainerBottomStackState();
}

class _TapContainerBottomStackState extends State<TapContainerBottomStack> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TapContainerBottomStack"),
      ),
      body: IndexedStack(index: tabIndex, children: widget.views),
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
