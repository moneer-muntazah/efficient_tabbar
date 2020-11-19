import 'package:flutter/material.dart';

class UsedDefaultTabBar extends StatelessWidget {
  final List<Tab> tabs;
  final List<Widget> views;

  UsedDefaultTabBar({this.tabs, this.views});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("UsedDefaultTabBar"),
        ),
        body: TabBarView(children: views),
        bottomNavigationBar: TabBar(
          tabs: tabs,
          // labelPadding: const EdgeInsets.all(0),
          // isScrollable: false,
          // indicatorSize: TabBarIndicatorSize.label,
          // indicatorPadding: EdgeInsets.all(4.0),
          // indicatorColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
