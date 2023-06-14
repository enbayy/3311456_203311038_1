import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {

  @override
  State<MySwitchListTile> createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool switchState = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(value: switchState, onChanged: (deger) {
      setState(() {
        switchState = deger;
      });
    },
      title: Text('Giriş Bilgilerimi Kaydet', style: TextStyle(fontSize: 18),),
      secondary: Icon(Icons.refresh),
    );
  }
}