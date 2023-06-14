import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/constant/custom_slider.dart';

class CustomSure extends StatefulWidget {
  CustomSure({ this.text});

  @override
  _CustomSureState createState() => _CustomSureState();
  final String? text;
}

class _CustomSureState extends State<CustomSure> {
  double slider_ayva = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('SÜRE'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[

            Text(widget.text!, style: TextStyle(fontSize: 23)),

            mySlider(),

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