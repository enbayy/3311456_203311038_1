import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, this.page, this.icon, this.text}) : super(key: key);
  final page;
  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>page));
      },
      style: ElevatedButton.styleFrom(primary: Colors.white),
      icon: Icon(icon, size: 64, color: Colors.black),
      label: Text(text, style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
    );
  }
}
