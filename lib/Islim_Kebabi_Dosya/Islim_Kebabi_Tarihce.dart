import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';

class IslimKebabiTarihce extends StatefulWidget {

  @override
  _IslimKebabiTarihceState createState() => _IslimKebabiTarihceState();
}

class _IslimKebabiTarihceState extends State<IslimKebabiTarihce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('TARİHÇE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[



            Text('Eskiden toprak kaplarda ağzı kapalı olarak pişirilen bu yemek kendi buharı ile piştiği için buhar kelimesiyle özdeşleşmiş. Türkçeye uyarlanmış.', style: TextStyle(fontSize: 23)),
            Text('Muhtemel ki; İngilizlerin Osmanlı topraklarını işgali esnasında vuku bulan hadisenin bir ürünü olarak,kebaba bu isim verilmiş.', style: TextStyle(fontSize: 23)),




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