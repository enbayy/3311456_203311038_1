import 'package:flutter/material.dart';
import 'package:izleme/ayva_tatlisi_dosya/ayva_tatlisi_Yapilis.dart';
import 'package:izleme/anaekran.dart';


class AyvaTatlisiTarif extends StatefulWidget {

  @override
  _AyvaTatlisiTarifState createState() => _AyvaTatlisiTarifState();
}

class _AyvaTatlisiTarifState extends State<AyvaTatlisiTarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MALZEMELER'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text(' '),
            Text('3 adet ayva', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('3’er yemek kaşığı toz şeker', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 adet çubuk tarçın', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('10-12 adet karanfil', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Yarım su bardağı su', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Ayvaların kararmaması için: ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('1 adet limon', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 lt kadar su', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Servis için: ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('Kaymak', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('File antep fıstığı', style: TextStyle(fontSize: 24)),
            Text(' '),




            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AyvaTatlisiYapilis()));
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
      ),
    );
  }
}