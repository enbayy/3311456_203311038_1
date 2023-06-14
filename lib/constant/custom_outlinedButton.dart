import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({Key? key, this.page}) : super(key: key);
  final page;

  @override
  Widget build(BuildContext context) {
    return  OutlinedButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      style: ElevatedButton.styleFrom(primary: Colors.white),
      icon: Icon(Icons.add, size: 30, color: Colors.black),
      label: Text('YAPILIŞ', style: TextStyle(fontSize: 20, color: Colors.black)),
    );
  }
}