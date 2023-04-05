import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class IslimKebabiYore extends StatefulWidget {

  @override
  _IslimKebabiYoreState createState() => _IslimKebabiYoreState();
}

class _IslimKebabiYoreState extends State<IslimKebabiYore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YÖRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text('İslim kebabı, Gaziantep’in meşhur yemekleri arasında olmakla birlikte hemen hemen her bölgede severek yapılan ve sunulan bir yemektir.', style: TextStyle(fontSize: 24)),



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