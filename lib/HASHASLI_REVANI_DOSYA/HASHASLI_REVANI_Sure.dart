import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class HashasliRevaniSure extends StatefulWidget {

  @override
  _HashasliRevaniSureState createState() => _HashasliRevaniSureState();
}

class _HashasliRevaniSureState extends State<HashasliRevaniSure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('SÜRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[


            Text('170 derecede 30 dakika kadar pişirilir.', style: TextStyle(fontSize: 24)),


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