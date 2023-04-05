import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class DilberDudagiSure extends StatefulWidget {

  @override
  _DilberDudagiSureState createState() => _DilberDudagiSureState();
}

class _DilberDudagiSureState extends State<DilberDudagiSure> {
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


            Text(' '),
            Text('Önceden ısıtılmış 170 derece fırında 17-20 dakika pişirin. Tatlıyı fırından çıkartın ve ılıklaşmasını bekleyin. Ilık tatlının üzerine ılık şerbeti gezdirin ve üstünü kapatıp bir gece bekletin. Dilber dudakları şerbeti çektikleri zaman servise hazırlar.', style: TextStyle(fontSize: 23)),
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