import 'package:flutter/material.dart';

class CustomTabController extends StatefulWidget {
  final List<Tab> tabs;
  final List<Widget> views;

  CustomTabController({this.tabs, this.views});

  @override
  _CustomTabControllerState createState() => _CustomTabControllerState();
}

class _CustomTabControllerState extends State<CustomTabController>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomTabController"),
      ),
      body: TabBarView(controller: _tabController, children: widget.views),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: widget.tabs,
        // labelPadding: const EdgeInsets.all(0),
        // isScrollable: false,
        // indicatorSize: TabBarIndicatorSize.label,
        // indicatorPadding: EdgeInsets.all(4.0),
        // indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
