import 'package:flutter/material.dart';
import 'package:izleme/Gullac_Dosya/Gullac_Kalori.dart';
import 'package:izleme/Gullac_Dosya/Gullac_Resim.dart';
import 'package:izleme/Gullac_Dosya/Gullac_Sure.dart';
import 'package:izleme/Gullac_Dosya/Gullac_Tarif.dart';
import 'package:izleme/Gullac_Dosya/Gullac_Yore.dart';
import 'package:izleme/anaekran.dart';

class Gullac extends StatefulWidget {

  @override
  _GullacState createState() => _GullacState();
}

class _GullacState extends State<Gullac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('GÜLLAÇ'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GullacTarif()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add, size: 64, color: Colors.black),
              label: Text('TARİF', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GullacKalori()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.accessibility_new_rounded, size: 64, color: Colors.black),
              label: Text('KALORİ', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GullacResim()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add_a_photo, size: 64, color: Colors.black),
              label: Text('RESİM', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GullacYore()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.account_balance_wallet, size: 64, color: Colors.black),
              label: Text('YÖRE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GullacSure()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.access_time_filled, size: 64, color: Colors.black),
              label: Text('SÜRE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),



            ElevatedButton(
              child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 29)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),

          ],
        ),
      ),
    );
  }
}