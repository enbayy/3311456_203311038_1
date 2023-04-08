import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class AyvaTatlisiKalori extends StatefulWidget {

  @override
  _AyvaTatlisiKaloriState createState() => _AyvaTatlisiKaloriState();
}

class _AyvaTatlisiKaloriState extends State<AyvaTatlisiKalori> {
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


            Text('Ayva tatlısının 100 gramında 170 kalori bulunmaktadır.', style: TextStyle(fontSize: 24)),
            Text('Ayva tatlısının 1 porsiyonu (250 gr) 426 kaloridir.', style: TextStyle(fontSize: 24)),



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