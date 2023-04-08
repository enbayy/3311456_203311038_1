import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';

class KuruFasulyeTarihce extends StatefulWidget {

  @override
  _KuruFasulyeTarihceState createState() => _KuruFasulyeTarihceState();
}

class _KuruFasulyeTarihceState extends State<KuruFasulyeTarihce> {
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
            Text('Avrupalı komşularıyla karşılaştırıldığında Türkiye, Amerika’dan Avrupa’ya getirilen fasulye ile tanışmakta biraz geç kaldı. Avrupalılar, 16. yüzyılda yemeklerinde fasulyeyi kullanmaya başlamışlardı. Anadolu’ya ise farklı ticaret yollarıyla getirildi. 18. yüzyıl itibariyle fasulye, saray mutfağı ve askerlerin kantinleri de dahil olmak üzere Türk mutfağına giriş yaptı. 1744 yılında Londra’dan gelen bazı gezginler notlarında kuru fasulyeyi, “azıcık ete korkunç miktarda sebze”olarak tarif edip şikâyet etmişlerdir.', style: TextStyle(fontSize: 19)),
            Text(' '),
            Text('Fasulyeye kıymanın eklenmesi Osmanlı mutfağındaki ete olan sevginin bir sonucu olarak görülebilir.', style: TextStyle(fontSize: 19)),
            Text(' '),
            Text('Kuru fasulyenin Türk ordusunda askerlere servis edilmesi 19. yüzyılda bir İngiliz subayının dikkatini çekmiştir. Gözlemlediğine göre, Avrupalı hiçbir asker, Türk askerler kadar bol miktarda yemez. Türk askerler yemeklerini bakır tencerelerde en az yakıt harcayacak şekilde düşük ısıda pişirirlerdi. Bu yavaş pişirme tekniği fasulyenin tadının daha çok ortaya çıkmasını sağlardı.', style: TextStyle(fontSize: 19)),
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