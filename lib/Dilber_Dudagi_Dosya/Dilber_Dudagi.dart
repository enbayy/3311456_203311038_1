import 'package:flutter/material.dart';
import 'package:izleme/Dilber_Dudagi_Dosya/Dilber_Dudagi_Kalori.dart';
import 'package:izleme/Dilber_Dudagi_Dosya/Dilber_Dudagi_Resim.dart';
import 'package:izleme/Dilber_Dudagi_Dosya/Dilber_Dudagi_Sure.dart';
import 'package:izleme/Dilber_Dudagi_Dosya/Dilber_Dudagi_Tarif.dart';
import 'package:izleme/Dilber_Dudagi_Dosya/Dilber_Dudagi_Yore.dart';
import 'package:izleme/anaekran.dart';


class Dilber_dudagi extends StatefulWidget {

  @override
  _Dilber_dudagiState createState() => _Dilber_dudagiState();
}

class _Dilber_dudagiState extends State<Dilber_dudagi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('DİLBER DUDAĞI'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DilberDudagiTarif()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add, size: 64, color: Colors.black),
              label: Text('TARİF', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DilberDudagiKalori()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.accessibility_new_rounded, size: 64, color: Colors.black),
              label: Text('KALORİ', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DilberDudagiResim()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add_a_photo, size: 64, color: Colors.black),
              label: Text('RESİM', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DilberDudagiYore()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.account_balance_wallet, size: 64, color: Colors.black),
              label: Text('YÖRE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DilberDudagiSure()));
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