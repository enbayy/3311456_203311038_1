import 'package:flutter/material.dart';
import 'package:izleme/ayva_tatlisi_dosya/ayva_tatlisi_Kalori.dart';
import 'package:izleme/ayva_tatlisi_dosya/ayva_tatlisi_Resim.dart';
import 'package:izleme/ayva_tatlisi_dosya/ayva_tatlisi_Sure.dart';
import 'package:izleme/ayva_tatlisi_dosya/ayva_tatlisi_Tarif.dart';
import 'package:izleme/ayva_tatlisi_dosya/ayva_tatlisi_Yore.dart';
import 'package:izleme/anaekran.dart';


class Ayva_tatlisi extends StatefulWidget {

  @override
  _Ayva_tatlisiState createState() => _Ayva_tatlisiState();
}

class _Ayva_tatlisiState extends State<Ayva_tatlisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('AYVA TATLISI'),
      ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AyvaTatlisiTarif()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(Icons.add, size: 64, color: Colors.black),
                label: Text('TARİF', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
              ),


              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AyvaTatlisiKalori()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(Icons.accessibility_new_rounded, size: 64, color: Colors.black),
                label: Text('KALORİ', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
              ),


              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AyvaTatlisiResim()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(Icons.add_a_photo, size: 64, color: Colors.black),
                label: Text('RESİM', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
              ),


              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AyvaTatlisiYore()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(Icons.account_balance_wallet, size: 64, color: Colors.black),
                label: Text('YÖRE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
              ),


              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AyvaTatlisiSure()));
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