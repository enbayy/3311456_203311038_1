import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class DilberDudagiYore extends StatefulWidget {

  @override
  _DilberDudagiYoreState createState() => _DilberDudagiYoreState();
}

class _DilberDudagiYoreState extends State<DilberDudagiYore> {
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

            Text("Dilber Dudağı Bursada yapılan bir tatlıdır.", style: TextStyle(fontSize: 24)),



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