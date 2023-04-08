import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class GullacKalori extends StatefulWidget {

  @override
  _GullacKaloriState createState() => _GullacKaloriState();
}

class _GullacKaloriState extends State<GullacKalori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('KALORİ'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text('1 dilim güllaç 250 kalori.', style: TextStyle(fontSize: 24)),
            Text('1 porsiyonu yaklaşık 110 gram olan orta boy bir porsiyon güllaç 143 kalori.', style: TextStyle(fontSize: 24)),
            Text('1 yaprak güllaç yaprağı 122 kalori.', style: TextStyle(fontSize: 24)),



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