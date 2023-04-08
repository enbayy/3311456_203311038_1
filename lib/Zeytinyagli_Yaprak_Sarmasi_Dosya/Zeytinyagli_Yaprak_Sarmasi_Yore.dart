import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';

class YaprakSarmasiYore extends StatefulWidget {

  @override
  _YaprakSarmasiYoreState createState() => _YaprakSarmasiYoreState();
}

class _YaprakSarmasiYoreState extends State<YaprakSarmasiYore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YÖRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text("Asma yaprağıyla olanı Nevşehir, Tokat, Ege mutfağına özgü olan Zeytinyağlı sarma ya da kıymalı sarma şeklinde farklı çeşitleri vardır.", style: TextStyle(fontSize: 24)),



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