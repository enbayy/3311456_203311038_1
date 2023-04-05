import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KofteKalori extends StatefulWidget {

  @override
  _KofteKaloriState createState() => _KofteKaloriState();
}

class _KofteKaloriState extends State<KofteKalori> {
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


            Text(' '),
            Text('Köftenin 100 gramında 168 kalori bulunmaktadır.', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Köftenin 1 porsiyonu (140 gr) 235 kalori, 1 köfte kadarı ( 30 gr) 50 kaloridir.', style: TextStyle(fontSize: 24)),
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