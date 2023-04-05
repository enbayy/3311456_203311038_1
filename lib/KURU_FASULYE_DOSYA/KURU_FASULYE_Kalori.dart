import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KuruFasulyeKalori extends StatefulWidget {

  @override
  _KuruFasulyeKaloriState createState() => _KuruFasulyeKaloriState();
}

class _KuruFasulyeKaloriState extends State<KuruFasulyeKalori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('KALORİ'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text('1 çay bardağı dolusu kuru fasulye 114 kalori.', style: TextStyle(fontSize: 24)),
            Text('1 su bardağı dolusu kuru fasulye 227 kalori.', style: TextStyle(fontSize: 24)),
            Text('Küçük porsiyon kuru fasulye 185 kalori.', style: TextStyle(fontSize: 24)),
            Text('Orta boy porsiyon kuru fasulye 256 kalori.', style: TextStyle(fontSize: 24)),


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