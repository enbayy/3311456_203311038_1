import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class BalparmakKalori extends StatefulWidget {

  @override
  _BalparmakKaloriState createState() => _BalparmakKaloriState();
}

class _BalparmakKaloriState extends State<BalparmakKalori> {
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


            Text(' '),
            Text(' '),
            Text('1 adet Balparmak tatlısı yaklaşık 423 kaloridir.', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Balparmak Tatlısı, kalorisi ve şeker içeriği yüksek bir tatlıdır.', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text(' '),



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