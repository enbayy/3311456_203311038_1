import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class ZulbiyeKalori extends StatefulWidget {

  @override
  _ZulbiyeKaloriState createState() => _ZulbiyeKaloriState();
}

class _ZulbiyeKaloriState extends State<ZulbiyeKalori> {
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


            Text("Zülbiye yemeğinin 1 Porsiyonunda 507 kcal bulunmaktadır.", style: TextStyle(fontSize: 24)),
            Text('Besin değeri olarak: ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('41.24 gram karbonhidrat', style: TextStyle(fontSize: 24)),
            Text('0.49 gram protein', style: TextStyle(fontSize: 24)),
            Text('26.04 gram yağ', style: TextStyle(fontSize: 24)),
            Text('0.43 gram lif içermektedir.', style: TextStyle(fontSize: 24)),



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