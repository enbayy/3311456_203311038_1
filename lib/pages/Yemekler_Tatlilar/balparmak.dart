import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';

class Balparmak extends StatefulWidget {

  @override
  _BalparmakState createState() => _BalparmakState();
}

class _BalparmakState extends State<Balparmak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('BALPARMAK'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            ListBody(

        children: [

            MyElevatedButton(
              page:CustomTarif(
                text: '''
Hamuru için:

Yarım paket margarin (125 gram)

Yarım su bardağı sıvı yağ

Yarım su bardağı toz şeker

1 yumurta

1 çay bardağı irmik

1 paket vanilya

1 çay kaşığı kabartma tozu

2-2,5 su bardağı kadar un

Üzeri için:

1 çay bardağı irmik

Şerbeti için:

2 su bardağı şeker

2,5 su bardağı su

3-4 damla limon suyu''',
              ) ,
              color: Colors.grey.shade700,
              text: 'TARİF',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomYapilis(
                text: '''
                
1) Öncelikle şerbetini hazırlayalım, ılık olması gerekiyor.

2) Şekeri ve suyu tencereye alıp şeker eriyene kadar karıştırarak pişirilir.

3) Şeker eridikten sonra karıştırmadan pişmeye bırakılır.

4) Kaynamaya başlayınca kısık ateşte 10 dk. daha pişirilir ve ocaktan alıp soğumaya bırakılır.

5) Karıştırma kabına bir yumurta kırılır, şeker eklenir ve çırpma teli ile çırpılır.

6) Üzerine sıvı yağ, irmik, margarin, vanilya, kabartma tozu eklenir ve karıştırmaya devam edilir.

7) Azar azar un ilavesi yaparak yoğrulur. Kulak memesi kıvamında yumuşak bir hamur elde edilir.

8) Hazırlanılan hamurdan ceviz büyüklüğünde parçalar kopartılıp avuç içinde yuvarlanarak parmak şekli verilir.

9) İrmiğe bulanıp yağlı kağıt serilmiş fırın tepsisine dizilir.

10) Önceden ısıtılmış 180 derece fırında 25-30 dk. pişirilir.

11) Hazırlanılan ılımış olan şerbet sıcak tatlının üzerine dökülür.

12) 1 saat kadar dinlendirilir şerbetini çektikten sonra servis yapabiliriz.

AFİYET OLSUN!''',
              ) ,
              color: Colors.grey.shade700,
              text: 'YAPILIŞ',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomKalori(
                text: '''
                
1 adet Balparmak tatlısı yaklaşık 423 kaloridir.                
                
Balparmak Tatlısı, kalorisi ve şeker içeriği yüksek bir tatlıdır.''',
              ) ,
              color: Colors.grey.shade700,
              text: 'KALORİ',
            ),

          SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomResim(
                image: "assets/resimler/balparmak.jpg",
              ) ,
              color: Colors.grey.shade700,
              text: 'RESİM',
            ),

          SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomSure(
                text: '''
                
Önceden ısıtılmış 180 derece fırında 25-30 dk. pişirilir.


                
Kaç dakikada pişti?''',
              ) ,
              color: Colors.grey.shade700,
              text: 'SÜRE',
            ),

        ],),


            ElevatedButton(
              child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 29)),
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