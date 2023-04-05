import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class HashasliRevaniKalori extends StatefulWidget {

  @override
  _HashasliRevaniKaloriState createState() => _HashasliRevaniKaloriState();
}

class _HashasliRevaniKaloriState extends State<HashasliRevaniKalori> {
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


            Text('1 diliminde 348 kalori bulunan, orta kalorili tatlı olan revani, sürekli kullanımında kilo aldırır.', style: TextStyle(fontSize: 24)),



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