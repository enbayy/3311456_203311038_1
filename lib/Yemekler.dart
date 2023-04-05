import 'package:flutter/material.dart';
import 'package:izleme/Anayemekler.dart';
import 'package:izleme/Tatlilar.dart';
import 'package:izleme/anaekran.dart';

class Yemekler extends StatefulWidget {

  @override
  _YemeklerState createState() => _YemeklerState();
}

class _YemeklerState extends State<Yemekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Yemekler'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Divider(
              thickness:2,
              height: 50,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                  side: BorderSide(color: Colors.amber, width: 4),
                  primary: Colors.grey.shade900,
                  minimumSize: Size(70, 70)),
              child: Text('ANA YEMEK', style: TextStyle(
                  fontFamily: 'Satisfy',
                  fontSize: 34)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Anayemekler()));

              },
            ),


            Divider(
              height: 50,
              thickness:2,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.amber, width: 4),
                  primary: Colors.grey.shade900,
                  minimumSize: Size(70, 70)),
              child: Text('TATLI', style: TextStyle(
                  fontFamily: 'Satisfy',
                  fontSize: 34)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tatli()));

              },
            ),


            Divider(
              height: 50,
              thickness:2,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.black, width: 4),
                  primary: Colors.red,
                  minimumSize: Size(70, 70)),
              child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
              },
            ),

          ],
        ),
      ),
    );
  }
}
