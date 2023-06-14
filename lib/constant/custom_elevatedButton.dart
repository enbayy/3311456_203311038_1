import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({Key? key, this.page, this.text, this.color}) : super(key: key);
  final page;
  final text;
  final color;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(color: color, width: 4),
          primary: Colors.grey.shade900,
          minimumSize: Size(70,70)),
      child: Text(text, style: TextStyle(
          fontFamily: 'Satisfy',
          fontSize: 34)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}