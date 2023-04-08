import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class PatlicanKebabiSure extends StatefulWidget {

  @override
  _PatlicanKebabiSureState createState() => _PatlicanKebabiSureState();
}

class _PatlicanKebabiSureState extends State<PatlicanKebabiSure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('SÜRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[

            Text('Sosu ve 1 çay bardağı suyu patlıcan ve köftelerin üzerine gelecek şekilde gezdirin ve Önceden ısıtılmış 200 derece fırında tercihen turbo veya fanlı fırında 50-60 dakika kadar pişer', style: TextStyle(fontSize: 23)),
            Text('Tencerede ne kadar sürede pişer?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Kızartma işlemi bitince patlıcanları fazla derin olmayan büyük bir tencereye dizin. Üzerine küçük parçalara dilimlenmiş domates ve biberi ekleyin. Salçaları yarım su bardağı ile kıvamını açıp üzerlerine gezdirin . Kızartma yağından 5 yemek kaşığı ekleyip kapağı kapalı bir şekilde kısık ateşte yaklaşık 1 saat pişirin.', style: TextStyle(fontSize: 22)),

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