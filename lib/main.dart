import 'package:flutter/material.dart';
import 'screen.dart';
import 'used_default_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final views = <Widget>[
    Screen('Home'),
    Screen('Categories'),
    Screen('Search'),
    Screen('Cart'),
    Screen('Profile')
  ];

  final tabs = <Tab>[
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.category_outlined)),
    Tab(icon: Icon(Icons.search)),
    Tab(icon: Icon(Icons.shopping_cart_outlined)),
    Tab(icon: Icon(Icons.person))
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UsedDefaultTabBar(tabs: tabs, views: views),
    );
  }
}
