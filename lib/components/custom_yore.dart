import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';


class CustomYore extends StatefulWidget {
  CustomYore({ this.text});

  @override
  _CustomYoreState createState() => _CustomYoreState();
  final String? text;
}

class _CustomYoreState extends State<CustomYore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YÖRE'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text(widget.text!, style: TextStyle(fontSize: 22)),

            ElevatedButton(
              child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),

          ],
        ),
        ),
      ),
    );
  }
}