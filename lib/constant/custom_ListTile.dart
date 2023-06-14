import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({Key? key, this.page, this.icon, this.text}) : super(key: key);
  final page;
  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(icon,color: Colors.amber),
      title: Text(text,style: TextStyle(fontSize: 18),
      ),
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}