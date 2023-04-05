import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class PatlicanKebabiYapilis extends StatefulWidget {

  @override
  _PatlicanKebabiYapilisState createState() => _PatlicanKebabiYapilisState();
}

class _PatlicanKebabiYapilisState extends State<PatlicanKebabiYapilis> {
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

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[


            Text(' '),
            Text('1) Patlıcanlar alaca soyulduktan sonra yuvarlak dilimler halinde doğranır.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('2) Düzenli bir biçimde dizildikten sonra, üzerine biraz tuz serpilir ve bekletilir. Böylece acımtırak suyu süzülür.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('3) Süzüldükten sonra bol suda yıkanır, aynı zamanda etimiz kuşbaşı doğranır.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('4) Tencereye alınıp suyu salıncaya kadar karıştırılarak kavrulur.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('5) Suyunu çekince bir kaşık zeytinyağı ile kızartılır.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('6) Kızaran patlıcanlar kevgirle yağını süzdürdükten sonra tavadan çıkartılır ve tepsiye yayılır.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('7) Bütün patlıcanlar kızarınca, üstüne tencerede kızartılmış olan et boşaltılır.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('8) Kabuğu soyulmuş, ünce doğranmış domates, bir tutam tuz, karabiber ve bir kaşık margarinle tencerede koyu bir salça olacak şekilde pişirilir ve, tepsideki patlıcan ve etlerin üstüne boşaltılır.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('9) Yeteri kadar et suyu ilave edilerek orta ateşte veya fırında pişirilir.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('10) Yemeğimiz suyunu çekince ocaktan veya fırından alınır ve üzerine kıyılmış maydanoz serpilerek sıcak sıcak servis yapılır.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('AFİYET OLSUN!', style: TextStyle(fontSize: 22)),
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