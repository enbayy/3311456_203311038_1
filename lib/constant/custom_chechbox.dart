import 'package:flutter/material.dart';

class mycheckbox extends StatefulWidget {

  @override
  State<mycheckbox> createState() => _mycheckboxState();
}

class _mycheckboxState extends State<mycheckbox> {
  bool? checkBoxState = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(value: checkBoxState, onChanged: (secildi) {
      setState(() {
        checkBoxState = secildi;
      });
    },
      activeColor: Colors.red,
      title: Text('Bütün malzemeleri kullandım', style: TextStyle(fontSize: 22),),
      //secondary: Icon(Icons.add, size: 35),
    );
  }
}