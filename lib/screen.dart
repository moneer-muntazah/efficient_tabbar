import 'package:flutter/material.dart';

// class Screen extends StatelessWidget {
//   final String name;
//
//   const Screen({this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     print("$name has been built");
//     return Center(
//       child: Text(
//         name,
//       ),
//     );
//   }
// }


class Screen extends StatefulWidget {
  final String name;

  const Screen({this.name, Key key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  _ScreenState() {
    print("constructed State object!");
  }

  @override
  Widget build(BuildContext context) {
    print("${widget.name} has been built");
    return Center(
      child: Text(
        widget.name,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print("recreated! ${widget.name}");
  }
}