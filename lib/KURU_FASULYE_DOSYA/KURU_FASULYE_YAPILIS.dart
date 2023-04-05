import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KuruFasulyeYapilis extends StatefulWidget {

  @override
  _KuruFasulyeYapilisState createState() => _KuruFasulyeYapilisState();
}

class _KuruFasulyeYapilisState extends State<KuruFasulyeYapilis> {
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
            Text('1) 4 yemek kaşığı sıvı yağ ve 2 yemek kaşığı tereyağını derin bir tencereye aktarın ve kızdırın.', style: TextStyle(fontSize: 21)),
            Text(' '),
            Text('2) 1 adet yemeklik doğranmış kuru soğanı da ekleyin ve pembeleşinceye kadar kavurun.', style: TextStyle(fontSize: 21)),
            Text(' '),
            Text('3) Soğanlar kavrulduktan sonra 1 yemek kaşığı domates salçasını ekleyin ve kokusu çıkana kadar kavurun.', style: TextStyle(fontSize: 21)),
            Text(' '),
            Text('4) Son olarak bir gece önceden suda beklettiğiniz kuru fasulyeleri de tencereye ekleyin.', style: TextStyle(fontSize: 21)),
            Text(' '),
            Text('5) Sonra 1-2 dakika karıştırın ve 3 su bardağı su, 1 çay kaşığı kırmızı toz biber, 1 çay kaşığı tuz ve 1 çay kaşığı toz şekeri ekleyin, kapağını kapatıp fasulyeler yumuşayana kadar pişirin.', style: TextStyle(fontSize: 21)),
            Text(' '),
            Text('6) Tane tane pişmiş pirinç pilavı ile servis edin.', style: TextStyle(fontSize: 21)),
            Text(' '),
            Text('AFİYET OLSUN!', style: TextStyle(fontSize: 21)),
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