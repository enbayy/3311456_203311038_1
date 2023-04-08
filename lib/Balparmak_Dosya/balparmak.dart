import 'package:flutter/material.dart';
import 'package:izleme/balparmak_dosya/balparmak_Kalori.dart';
import 'package:izleme/balparmak_dosya/balparmak_Resim.dart';
import 'package:izleme/balparmak_dosya/balparmak_Sure.dart';
import 'package:izleme/balparmak_dosya/balparmak_Tarif.dart';
import 'package:izleme/anaekran.dart';

class Balparmak extends StatefulWidget {

  @override
  _BalparmakState createState() => _BalparmakState();
}

class _BalparmakState extends State<Balparmak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('BALPARMAK'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BalparmakTarif()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add, size: 64, color: Colors.black),
              label: Text('TARİF', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BalparmakKalori()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.accessibility_new_rounded, size: 64, color: Colors.black),
              label: Text('KALORİ', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BalparmakResim()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add_a_photo, size: 64, color: Colors.black),
              label: Text('RESİM', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BalparmakSure()));
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