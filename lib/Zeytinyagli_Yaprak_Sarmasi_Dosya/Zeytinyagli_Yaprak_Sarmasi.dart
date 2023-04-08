import 'package:flutter/material.dart';
import 'package:izleme/Zeytinyagli_Yaprak_Sarmasi_Dosya/Zeytinyagli_Yaprak_Sarmasi_Kalori.dart';
import 'package:izleme/Zeytinyagli_Yaprak_Sarmasi_Dosya/Zeytinyagli_Yaprak_Sarmasi_Resim.dart';
import 'package:izleme/Zeytinyagli_Yaprak_Sarmasi_Dosya/Zeytinyagli_Yaprak_Sarmasi_Sure.dart';
import 'package:izleme/Zeytinyagli_Yaprak_Sarmasi_Dosya/Zeytinyagli_Yaprak_Sarmasi_Tarif.dart';
import 'package:izleme/Zeytinyagli_Yaprak_Sarmasi_Dosya/Zeytinyagli_Yaprak_Sarmasi_Yore.dart';
import 'package:izleme/anaekran.dart';

class Zeytinyagli_Yaprak_sarmasi extends StatefulWidget {

  @override
  _Zeytinyagli_Yaprak_sarmasiState createState() => _Zeytinyagli_Yaprak_sarmasiState();
}

class _Zeytinyagli_Yaprak_sarmasiState extends State<Zeytinyagli_Yaprak_sarmasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YAPRAK SARMASI'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => YaprakSarmasiTarif()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add, size: 64, color: Colors.black),
              label: Text('TARİF', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => YaprakSarmasiKalori()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.accessibility_new_rounded, size: 64, color: Colors.black),
              label: Text('KALORİ', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => YaprakSarmasiResim()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add_a_photo, size: 64, color: Colors.black),
              label: Text('RESİM', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => YaprakSarmasiYore()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.account_balance_wallet, size: 64, color: Colors.black),
              label: Text('YÖRE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => YaprakSarmasiSure()));
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