import 'package:flutter/material.dart';
import 'package:izleme/KAZANDIBI_DOSYA/KAZANDIBI_YAPILIS.dart';
import 'package:izleme/anaekran.dart';

class KazandibiTarif extends StatefulWidget {

  @override
  _KazandibiTarifState createState() => _KazandibiTarifState();
}

class _KazandibiTarifState extends State<KazandibiTarif> {
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


            Text('6 su bardağı süt', style: TextStyle(fontSize: 24)),
            Text('2 yemek kaşığı nişasta', style: TextStyle(fontSize: 24)),
            Text('1 su bardağı un', style: TextStyle(fontSize: 24)),
            Text('1 su bardağı şeker', style: TextStyle(fontSize: 24)),
            Text('1 yemek kaşığı tereyağı', style: TextStyle(fontSize: 24)),
            Text('1 paket vanilya', style: TextStyle(fontSize: 24)),



            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KazandibiYapilis()));
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