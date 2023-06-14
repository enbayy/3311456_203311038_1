import 'package:flutter/material.dart';

class MyIstatistikButton extends StatelessWidget {
  const MyIstatistikButton({Key? key, this.page, this.text}) : super(key: key);
  final page;
  final text;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(color: Colors.white, width: 7),
          primary: Colors.grey.shade900,
          minimumSize: Size(60,70)),
      child: Text(text, style: TextStyle(fontSize: 20)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}