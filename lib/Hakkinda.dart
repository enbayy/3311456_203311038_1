import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class Hakkinda extends StatefulWidget {

  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('HAKKINDA'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text(' '),
            Text('Leziz Yemek Tarifleri', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('Versiyon 1.0.24', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('Her Hakkı Saklıdır', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('© 2023 - ∞ Leziz Yemek Tarifleri', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('Şikayet ve Öneri için iletişim:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('1enesbayar@gmail.com', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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