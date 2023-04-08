import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KazandibiSure extends StatefulWidget {

  @override
  _KazandibiSureState createState() => _KazandibiSureState();
}

class _KazandibiSureState extends State<KazandibiSure> {
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

            Text('Önceden ısıtılmış 200 derece fırında 20-30 dakika kadar tabandaki pudra şekerinin iyice eriyip kahverengleşmesini sağlıyoruz.', style: TextStyle(fontSize: 23)),



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