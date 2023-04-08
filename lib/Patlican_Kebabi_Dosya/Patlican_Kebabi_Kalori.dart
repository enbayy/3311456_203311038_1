import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class PatlicanKebabiKalori extends StatefulWidget {

  @override
  _PatlicanKebabiKaloriState createState() => _PatlicanKebabiKaloriState();
}

class _PatlicanKebabiKaloriState extends State<PatlicanKebabiKalori> {
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


            Text('Patlıcan kebabının 100 gramında 102 kalori bulunmaktadır.', style: TextStyle(fontSize: 24)),
            Text('Ortalama patlıcan kebabı kalori hesabı şu şekildedir: 1 Porsiyon Patlıcan Kebabı (270 gr): 276 kcal.', style: TextStyle(fontSize: 24)),
            Text('1 Porsiyon Köfteli Patlıcan Kebabı (330 gr): 282 kcal.', style: TextStyle(fontSize: 24)),



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