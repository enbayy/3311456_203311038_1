import 'package:flutter/material.dart';
import 'package:izleme/KOFTE_DOSYA/KOFTE_YAPILIS.dart';
import 'package:izleme/anaekran.dart';


class KofteTarif extends StatefulWidget {

  @override
  _KofteTarifState createState() => _KofteTarifState();
}

class _KofteTarifState extends State<KofteTarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MALZEMELER'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text(' '),
            Text('500 gr orta yağlı kıyma', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 orta boy rendelenmiş soğan', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 diş sarımsak', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 adet yumurta', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Yarım çay bardağı galeta unu', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 yemek kaşığı sıvı yağ', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 avuç ince kıyılmış maydanoz', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1,5 çay kaşığı tuz', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Yarım çay kaşığı karabiber', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı kimyon', style: TextStyle(fontSize: 24)),
            Text(' '),



            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KofteYapilis()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              icon: Icon(Icons.add, size: 30, color: Colors.black),
              label: Text('YAPILIŞ', style: TextStyle(fontSize: 20, color: Colors.black)),
            ),



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