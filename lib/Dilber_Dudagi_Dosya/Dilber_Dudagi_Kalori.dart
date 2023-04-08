import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class DilberDudagiKalori extends StatefulWidget {

  @override
  _DilberDudagiKaloriState createState() => _DilberDudagiKaloriState();
}

class _DilberDudagiKaloriState extends State<DilberDudagiKalori> {
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


            Text('Dilber Dudadğının 100 gramında 331 kcal kalori bulunmaktadır.', style: TextStyle(fontSize: 24)),
            Text('1 Porsiyon (Orta) yani 60 gramlık miktarında 199 kalori bulunmaktadır.', style: TextStyle(fontSize: 24)),



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