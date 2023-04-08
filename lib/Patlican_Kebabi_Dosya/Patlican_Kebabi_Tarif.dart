import 'package:flutter/material.dart';
import 'package:izleme/Patlican_Kebabi_Dosya/Patlican_Kebabi_Yapilis.dart';
import 'package:izleme/anaekran.dart';

class PatlicanKebabiTarif extends StatefulWidget {

  @override
  _PatlicanKebabiTarifState createState() => _PatlicanKebabiTarifState();
}

class _PatlicanKebabiTarifState extends State<PatlicanKebabiTarif> {
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


            Text('500 gr kemiksiz koyun ya da dana eti', style: TextStyle(fontSize: 24)),
            Text('1 kg patlıcan', style: TextStyle(fontSize: 24)),
            Text('Yarım kg domates', style: TextStyle(fontSize: 24)),
            Text('Yarım demet kıyılmış maydanoz', style: TextStyle(fontSize: 24)),
            Text('Yarım bardak zeytinyağı', style: TextStyle(fontSize: 24)),
            Text('1 çorba kaşığı margarin ya da tereyağı', style: TextStyle(fontSize: 24)),
            Text('Yeteri kadar et suyu', style: TextStyle(fontSize: 24)),
            Text('Tuz ve karabiber', style: TextStyle(fontSize: 24)),


            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PatlicanKebabiYapilis()));
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