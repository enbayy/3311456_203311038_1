import 'package:flutter/material.dart';
import 'package:izleme/HASHASLI_REVANI_DOSYA/HASHASLI_REVANI_YAPILIS.dart';
import 'package:izleme/anaekran.dart';


class HashasliRevaniTarif extends StatefulWidget {

  @override
  _HashasliRevaniTarifState createState() => _HashasliRevaniTarifState();
}

class _HashasliRevaniTarifState extends State<HashasliRevaniTarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MALZEMELER'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text(' '),
            Text('3 adet yumurta', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 su bardağı şeker', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 su bardağı süt', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 su bardağı sıvı yağ', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 su bardağı irmik', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 su bardağı un', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Yarım su bardağı haşhaş', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 paket vanilya', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 paket kabartma tozu', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Şerbeti için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('2 su bardağı şeker', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('3 su bardağı su', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Üzeri için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('1 paket krem şanti', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay bardağı süt', style: TextStyle(fontSize: 24)),
            Text(' '),


            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HashasliRevaniYapilis()));
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
      ),
    );
  }
}