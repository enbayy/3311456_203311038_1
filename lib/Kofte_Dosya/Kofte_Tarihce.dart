import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';

class KofteTarihce extends StatefulWidget {

  @override
  _KofteTarihceState createState() => _KofteTarihceState();
}

class _KofteTarihceState extends State<KofteTarihce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('TARİHÇE'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text(' '),
            Text("Köftenin Kökeni Orta Asya ve Mezopotamya olarak kabul edilir. Birçok yazıt ve kitabede ezik et anlamına gelen 'kuffette' diye söz edilir.", style: TextStyle(fontSize: 22)),
            Text(' '),
            Text('Dünyanın hemen hemen her mutfağında önemli bir yere sahip olan köftenin dünyaya bu coğrafyadan yayıldığı kabul edilir.', style: TextStyle(fontSize: 22)),
            Text(' '),
            Text("Köfteyi 16. yüzyılda da Osmanlı saray yemekleri arasında görmek mümkün. Kanunî Sultan Süleyman'ın oğulları Şehzade Bayezid ve Şehzade Cihangir için 1539 yılı Kasım ayında yapılan sünnet düğününde verilen ziyafetlerde 'köfte ve has ekmek' de davetlilere ikram edilen yemeklerdendi.", style: TextStyle(fontSize: 22)),
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
      ),
    );
  }
}