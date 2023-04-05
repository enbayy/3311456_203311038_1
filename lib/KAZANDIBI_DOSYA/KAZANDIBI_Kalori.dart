import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KazandibiKalori extends StatefulWidget {

  @override
  _KazandibiKaloriState createState() => _KazandibiKaloriState();
}

class _KazandibiKaloriState extends State<KazandibiKalori> {
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

            Text(' '),
            Text('1 Porsiyon (Orta) Pudra Şekerli Kazandibi 300,98 kaloridir.', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Besin değeri olarak:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('48,99 Karbonhidrat(g)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('7,14 Protein(g)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('6,31 yağ(g)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('0,48 lif(g)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('157,80 Sodyum(mg)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('279,83 potasyum(mg)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('214,74 Kalsiyum(mg)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('76,12 A Vitamini(ui)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1,77 C Vitamini(mg)', style: TextStyle(fontSize: 24)),
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