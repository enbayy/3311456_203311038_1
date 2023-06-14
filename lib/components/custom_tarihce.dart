import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';

class CustomTarihce extends StatefulWidget {
  CustomTarihce({ this.text});

  @override
  _CustomTarihceState createState() => _CustomTarihceState();
  final String? text;
}

class _CustomTarihceState extends State<CustomTarihce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('TARİHÇE'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text(widget.text!, style: TextStyle(fontSize: 23)),

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