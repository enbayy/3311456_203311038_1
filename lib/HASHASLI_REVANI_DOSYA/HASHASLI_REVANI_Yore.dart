import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class HashasliRevaniYore extends StatefulWidget {

  @override
  _HashasliRevaniYoreState createState() => _HashasliRevaniYoreState();
}

class _HashasliRevaniYoreState extends State<HashasliRevaniYore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YÖRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text("Revani, Türk mutfağındaki tatlılardan biridir. Osmanlı döneminde Ermenistan'ın ve Erivan'ın fethedilmesi şerefine Saray aşçılarının icat ettikleri ve Erivan zaferi sebebiyle 'Revani' adı verdikleri bir tatlıdır.", style: TextStyle(fontSize: 23)),



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