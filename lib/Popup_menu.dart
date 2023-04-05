import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Popup_menu extends StatefulWidget {
  const Popup_menu({Key? key}) : super(key: key);

  @override
  _Popup_menuState createState() => _Popup_menuState();
}

class _Popup_menuState extends State<Popup_menu> {
  String _secilenButon = '';
  @override
  Widget build(BuildContext context) {
    return Center(

      child: PopupMenuButton<String>(
        onSelected: (String buton){},
        icon: Icon(Icons.add_circle, size: 35),
        itemBuilder: (BuildContext context){
          return <PopupMenuEntry<String>>[
            PopupMenuItem(child: Text('AFİYET OLSUN :)', style: TextStyle(color: Colors.black),))

          ];
        },
      ),
    );
  }
}