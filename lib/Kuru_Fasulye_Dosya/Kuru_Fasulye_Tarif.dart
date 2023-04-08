import 'package:flutter/material.dart';
import 'package:izleme/Kuru_Fasulye_Dosya/Kuru_Fasulye_Yapilis.dart';
import 'package:izleme/anaekran.dart';

class KuruFasulyeTarif extends StatefulWidget {

  @override
  _KuruFasulyeTarifState createState() => _KuruFasulyeTarifState();
}

class _KuruFasulyeTarifState extends State<KuruFasulyeTarif> {
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

            Text(' '),
            Text('2 su bardağı kuru fasulye', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('300 gr dana kuşbaşı et', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 adet kuru soğan', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 tane sivri biber', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 yemek kaşığı domates salçası', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 tatlı kaşığı acı biber salçası', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Tuz', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('4, 5 -5 bardak sıcak su', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Çok az sıvı yağ', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 tane küp şeker', style: TextStyle(fontSize: 24)),
            Text(' '),



            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KuruFasulyeYapilis()));
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