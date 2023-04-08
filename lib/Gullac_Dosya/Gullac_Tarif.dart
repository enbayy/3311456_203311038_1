import 'package:flutter/material.dart';
import 'package:izleme/Gullac_Dosya/Gullac_Yapilis.dart';
import 'package:izleme/anaekran.dart';

class GullacTarif extends StatefulWidget {

  @override
  _GullacTarifState createState() => _GullacTarifState();
}

class _GullacTarifState extends State<GullacTarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MALZEMELER'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text('12 yaprak güllaç', style: TextStyle(fontSize: 24)),
            Text('1,5 litre süt', style: TextStyle(fontSize: 24)),
            Text('2 su bardağı şeker', style: TextStyle(fontSize: 24)),
            Text('Çekilmiş ceviz', style: TextStyle(fontSize: 24)),
            Text('2 yemek kaşığı gül suyu (isteğe göre)', style: TextStyle(fontSize: 24)),
            Text('Üzeri için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Toz Antep fıstığı', style: TextStyle(fontSize: 24)),
            Text('Kiraz şekerlemesi', style: TextStyle(fontSize: 24)),


            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GullacYapilis()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add, size: 30, color: Colors.black),
              label: Text('YAPILIŞ', style: TextStyle(fontSize: 20, color: Colors.black)),
            ),



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
    );
  }
}