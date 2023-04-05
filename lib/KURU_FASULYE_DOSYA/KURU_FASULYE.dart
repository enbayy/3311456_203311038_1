import 'package:flutter/material.dart';
import 'package:izleme/KURU_FASULYE_DOSYA/KURU_FASULYE_Kalori.dart';
import 'package:izleme/KURU_FASULYE_DOSYA/KURU_FASULYE_Resim.dart';
import 'package:izleme/KURU_FASULYE_DOSYA/KURU_FASULYE_Sure.dart';
import 'package:izleme/KURU_FASULYE_DOSYA/KURU_FASULYE_Tarif.dart';
import 'package:izleme/KURU_FASULYE_DOSYA/KURU_FASULYE_Tarihce.dart';
import 'package:izleme/KURU_FASULYE_DOSYA/KURU_FASULYE_Yore.dart';
import 'package:izleme/anaekran.dart';


class Kuru_fasulye extends StatefulWidget {

  @override
  _Kuru_fasulyeState createState() => _Kuru_fasulyeState();
}

class _Kuru_fasulyeState extends State<Kuru_fasulye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('KURU FASULYE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            
            
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => KuruFasulyeTarif()));
                },
              style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(Icons.add, size: 64, color: Colors.black),
                label: Text('TARİF', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KuruFasulyeKalori()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.accessibility_new_rounded, size: 64, color: Colors.black),
              label: Text('KALORİ', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KuruFasulyeTarihce()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.account_balance, size: 64, color: Colors.black),
              label: Text('TARİHÇE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KuruFasulyeResim()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add_a_photo, size: 64, color: Colors.black),
              label: Text('RESİM', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KuruFasulyeYore()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.account_balance_wallet, size: 64, color: Colors.black),
              label: Text('YÖRE', style: TextStyle(fontFamily: 'Satisfy',fontSize: 29, color: Colors.black)),
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KuruFasulyeSure()));
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