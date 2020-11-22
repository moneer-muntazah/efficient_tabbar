import 'package:flutter/material.dart';

class CustomTabContainer extends StatefulWidget {
  final List<Icon> icons;
  final List<Widget> views;

  CustomTabContainer({this.icons, this.views});

  @override
  _CustomTabContainerState createState() => _CustomTabContainerState();
}

class _CustomTabContainerState extends State<CustomTabContainer> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TapContainerBottom"),
      ),
      body: widget.views[tabIndex],
      bottomNavigationBar: _CustomBottomNavigationBar(
        icons: widget.icons,
        onTap: (i) => setState(() {
          tabIndex = i;
        }),
        currentIndex: tabIndex,
      ),
    );
  }
}

class _CustomBottomNavigationBar extends StatelessWidget {
  final List<Icon> icons;
  final int currentIndex;
  final ValueChanged<int> onTap;

  _CustomBottomNavigationBar({this.icons, this.onTap, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        icons.length,
        (i) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(icon: icons[i], onPressed: () => onTap(i)),
            if (currentIndex == i)
              Container(
                  color: Colors.orange,
                  height: 3,
                  width: mediaSize.width / icons.length - 50)
          ],
        ),
      ),
    );
  }
}
