import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class GullacSure extends StatefulWidget {

  @override
  _GullacSureState createState() => _GullacSureState();
}

class _GullacSureState extends State<GullacSure> {
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


            Text('Öncelikle güllaç yapraklarını kolaylık açısından makasla ortadan ikiye keserek kullanabilirsiniz ya da direkt yaprak boyutunda tepside sütleyebilirsiniz. Sütü tencereye alın ve şekerle birlikte eriyene kadar 10 dakika civarı karıştırarak pişirin.', style: TextStyle(fontSize: 23)),


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