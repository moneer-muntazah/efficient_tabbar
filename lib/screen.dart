import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String name;

  const Screen(this.name);

  @override
  Widget build(BuildContext context) {
    print("$name has been built");
    return Center(
      child: Text(
        name,
      ),
    );
  }
}
