import 'package:flutter/material.dart';
import 'screen.dart';
import 'used_default_tabbar.dart';
import 'tap_container_bottom.dart';
import 'tab_container_index_stack.dart';

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

  // final tabs = <BottomNavigationBarItem>[
  //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
  //   BottomNavigationBarItem(
  //       icon: Icon(Icons.category_outlined), label: 'category'),
  //   BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
  //   BottomNavigationBarItem(
  //       icon: Icon(Icons.shopping_cart_outlined), label: 'cart'),
  //   BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: UsedDefaultTabBar(tabs: tabs, views: views),
      // home: TapContainerBottom(tabs: tabs, views: views),
      // home: TapContainerBottomStack(tabs: tabs, views: views),
    );
  }
}
