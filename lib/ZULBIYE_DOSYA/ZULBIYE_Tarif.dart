import 'package:flutter/material.dart';
import 'package:izleme/ZULBIYE_DOSYA/ZULBIYE_YAPILIS.dart';
import 'package:izleme/anaekran.dart';


class ZulbiyeTarif extends StatefulWidget {

  @override
  _ZulbiyeTarifState createState() => _ZulbiyeTarifState();
}

class _ZulbiyeTarifState extends State<ZulbiyeTarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
            Text('400 gram dana kuşbaşı eti', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('400 gram arpacık soğan', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('10 diş sarımsak', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 yemek kaşığı tereyağı', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 yemek kaşığı sıvı yağ', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 yemek kaşığı domates salçası', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı biber salçası', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('2 su bardağı haşlanmış nohut', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı kimyon', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 tatlı kaşığı sirke', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 tatlı kaşığı tuz', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı karabiber', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı kırmızı biber', style: TextStyle(fontSize: 24)),
            Text(' '),



            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ZulbiyeYapilis()));
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