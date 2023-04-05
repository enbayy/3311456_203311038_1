import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class YaprakSarmasiKalori extends StatefulWidget {

  @override
  _YaprakSarmasiKaloriState createState() => _YaprakSarmasiKaloriState();
}

class _YaprakSarmasiKaloriState extends State<YaprakSarmasiKalori> {
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


            Text('1 yaprak sarma 32 kalori', style: TextStyle(fontSize: 24)),
            Text('10 adet sarma 317 kalori.', style: TextStyle(fontSize: 24)),
            Text('Bir porsiyon sarma 125 kalori', style: TextStyle(fontSize: 24)),
            Text('5 adet zeytinyağlı sarma 158 kalori.', style: TextStyle(fontSize: 24)),



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