import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness:3,
      height: 40,
      indent: 20,
      endIndent: 20,
      color: Colors.black,
    );
  }
}