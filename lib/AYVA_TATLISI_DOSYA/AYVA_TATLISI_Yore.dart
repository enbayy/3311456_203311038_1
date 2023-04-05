import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class AyvaTatlisiYore extends StatefulWidget {

  @override
  _AyvaTatlisiYoreState createState() => _AyvaTatlisiYoreState();
}

class _AyvaTatlisiYoreState extends State<AyvaTatlisiYore> {
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

            Text("Osmanlı'nın ilk başkenti olan Bursa, Osmanlı Saray Mutfağı'nın etkisinde kalmıştır. Ayva tatlısı Bursa'da yaygın olarak pişirilen meyveli tatlılar arasındadır.", style: TextStyle(fontSize: 22)),



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