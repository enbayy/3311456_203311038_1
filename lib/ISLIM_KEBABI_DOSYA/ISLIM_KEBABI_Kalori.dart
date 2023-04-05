import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class IslimKebabiKalori extends StatefulWidget {

  @override
  _IslimKebabiKaloriState createState() => _IslimKebabiKaloriState();
}

class _IslimKebabiKaloriState extends State<IslimKebabiKalori> {
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

            Text('İslim Köftenin 100 gramında 86 kalori vardır.', style: TextStyle(fontSize: 24)),
            Text('Besin değeri olarak:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('5 gr protein', style: TextStyle(fontSize: 24)),
            Text('6 gr yağ', style: TextStyle(fontSize: 24)),
            Text('2.86 gr karbonhidrat içermektedir.', style: TextStyle(fontSize: 24)),


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