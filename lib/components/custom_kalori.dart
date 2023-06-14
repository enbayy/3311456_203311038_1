import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';


class CustomKalori extends StatefulWidget {
  CustomKalori({ this.text});
  @override
  _CustomKaloriState createState() => _CustomKaloriState();
  final String? text;
}

class _CustomKaloriState extends State<CustomKalori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('KALORİ'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text(widget.text!, style: TextStyle(fontSize: 24)),

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