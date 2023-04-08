import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KofteYapilis extends StatefulWidget {

  @override
  _KofteYapilisState createState() => _KofteYapilisState();
}

class _KofteYapilisState extends State<KofteYapilis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YAPILIŞ'),
      ),
      body: Center(
    child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text(' '),
            Text('1) Uygun bir yoğurma kabı içerisine kıymamızı alalım. Üzerine rendelenmiş ve suyu sıkılmış soğan, küçük küçük kesilmiş sarımsak, yumurta, galeta unu, sıvı yağ, maydanoz, tuz, karabiber ve kimyonu alalım ve malzemelerimiz güzelce karışana kadar yoğuralım.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('2) Hazırladığımız harcımızın üzerini streç ile örtelim ve 30 dakika kadar buzdolabında dinlendirelim.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('3) Sürenin sonunda harcımızı dolaptan alalım, elimizle parçalar kopartarak  şekillendirelim. Ben şeklini oval yaptım ancak siz dilediğiniz gibi şekillendirebilirsiniz. Ancak burada köftelerinizin içlerinin de pişmesi için ince olmasına dikkat etmelisiniz.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('4) Şekillendirdiğimiz köftelerimizi uygun bir tabak içerisine alalım. Dilerseniz köftelerinizi bu aşamada da dinlendirebilirsiniz.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('5) Köftelerimizi pişirmek için ocaktaki tavamıza sıvı yağı alalım ve ısıtalım.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('6) Ardından köftelerimizi tavamıza alalım ve her iki tarafını da çevirerek pişirelim.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('7) Pişen köftelerimizin fazla yağının süzülmesi için kağıt havlu serdiğimiz tabağa alalım ve servis edelim.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('AFİYET OLSUN!', style: TextStyle(fontSize: 20)),
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