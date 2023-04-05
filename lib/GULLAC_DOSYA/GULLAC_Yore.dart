import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class GullacYore extends StatefulWidget {

  @override
  _GullacYoreState createState() => _GullacYoreState();
}

class _GullacYoreState extends State<GullacYore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YÖRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text("Güllaç Kastamonulu Ali Usta tarafından yapıldığı için Kastamonu'da baklava olarak sunulmaktadır. Osmanlı mutfağında sık sık hazırlanan bu tatlı, her şehirde severek tüketilir.", style: TextStyle(fontSize: 23)),



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