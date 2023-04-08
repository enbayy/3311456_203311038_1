import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KofteSure extends StatefulWidget {

  @override
  _KofteSureState createState() => _KofteSureState();
}

class _KofteSureState extends State<KofteSure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('SÜRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[



            Text(' '),
            Text('Yaklaşık 30-35 dakika içerisinde köfteler pişecektir.', style: TextStyle(fontSize: 24)),




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