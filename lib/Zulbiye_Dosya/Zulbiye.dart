import 'package:flutter/material.dart';
import 'package:izleme/Zulbiye_Dosya/Zulbiye_Kalori.dart';
import 'package:izleme/Zulbiye_Dosya/Zulbiye_Resim.dart';
import 'package:izleme/Zulbiye_Dosya/Zulbiye_Sure.dart';
import 'package:izleme/Zulbiye_Dosya/Zulbiye_Tarif.dart';
import 'package:izleme/Zulbiye_Dosya/Zulbiye_Yore.dart';
import 'package:izleme/anaekran.dart';


class Zulbiye extends StatefulWidget {

  @override
  _ZulbiyeState createState() => _ZulbiyeState();
}

class _ZulbiyeState extends State<Zulbiye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('ZÜLBİYE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ZulbiyeTarif()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add, size: 64, color: Colors.black),
              label: Text('TARİF', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ZulbiyeKalori()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.accessibility_new_rounded, size: 64, color: Colors.black),
              label: Text('KALORİ', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ZulbiyeResim()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add_a_photo, size: 64, color: Colors.black),
              label: Text('RESİM', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ZulbiyeYore()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.account_balance_wallet, size: 64, color: Colors.black),
              label: Text('YÖRE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ZulbiyeSure()));
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