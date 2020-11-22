import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart' show GButton;
import 'screen.dart';
import 'used_default_tabbar.dart';
import 'tap_container_bottom.dart';
import 'tab_container_index_stack.dart';
import 'google_nav.dart';
import 'my_cupertino_tab.dart';
import 'custom_tab_controller.dart';
import 'custom_tab_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final views = <Widget>[
    Screen(name: 'Home'),
    Screen(name: 'Categories'),
    Screen(name: 'Search'),
    Screen(name: 'Cart'),
    Screen(name: 'Profile')
  ];

  // final views =  <Widget>[
  //   Screen(name: 'Home', key: UniqueKey()),
  //   Screen(name: 'Categories', key: UniqueKey()),
  //   Screen(name: 'Search', key: UniqueKey()),
  //   Screen(name: 'Cart', key: UniqueKey()),
  //   Screen(name: 'Profile', key: UniqueKey())
  // ];

  // final tabs =  <Tab>[
  //   Tab(icon: Icon(Icons.home)),
  //   Tab(icon: Icon(Icons.category_outlined)),
  //   Tab(icon: Icon(Icons.search)),
  //   Tab(icon: Icon(Icons.shopping_cart_outlined)),
  //   Tab(icon: Icon(Icons.person))
  // ];

  final icons = <Icon>[
    Icon(Icons.home),
    Icon(Icons.category_outlined),
    Icon(Icons.search),
    Icon(Icons.shopping_cart_outlined),
    Icon(Icons.person)
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

  // final tabs = <GButton>[
  //   GButton(icon: Icons.home, text: 'home'),
  //   GButton(icon: Icons.category_outlined, text: 'category'),
  //   GButton(icon: Icons.search, text: 'search'),
  //   GButton(icon: Icons.shopping_cart_outlined, text: 'cart'),
  //   GButton(icon: Icons.person, text: 'profile')
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      // home: UsedDefaultTabBar(tabs: tabs, views: views),
      // home: TapContainerBottom(tabs: tabs, views: views),
      // home: TapContainerBottomStack(tabs: tabs, views: views),
      // home: GoogleNavBar(tabs: tabs, views: views),
      // home: MyCupertinoTab(tabs: tabs, views: views),
      home: CustomTabContainer(icons: icons, views: views),
    );
  }
}
