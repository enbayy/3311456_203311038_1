import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/components/custom_yore.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';


class HashasliRevani extends StatefulWidget {

  @override
  _HashasliRevaniState createState() => _HashasliRevaniState();
}

class _HashasliRevaniState extends State<HashasliRevani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('HAŞHAŞLI REVANİ'),
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
3 adet yumurta

1 su bardağı şeker

1 su bardağı süt

1 su bardağı sıvı yağ

1 su bardağı irmik

1 su bardağı un

Yarım su bardağı haşhaş

1 paket vanilya

1 paket kabartma tozu

Şerbeti için:

2 su bardağı şeker

3 su bardağı su

Üzeri için:

1 paket krem şanti

1 çay bardağı süt''',
              ) ,
              color: Colors.grey.shade700,
              text: 'TARİF',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomYapilis(
                text: '''
                
1) Yumurta ve şekeri köpük köpük olana kadar çırpın.

2) Ardından süt ve sıvı yağı ilave edin ve karıştırın.

3) Sonra irmik, un ve haşhaşı ekleyin.

4) Karıştırdıktan sonra kabartma tozu ve vanilyayı ekleyerek iyice çırpın ve yağlanmış tepsiye dökün.

5) Önceden ısıtılmış 170 derece fırında pişirin.

6) Şerbeti için şeker ve suyu kaynatın.

7) 1-2 dk kaynadıktan sonra altını kapatın.

8) Altını kapattıktan sonra ilk sıcaklığın geçmesini bekleyin.

9) Daha sonra soğumuş olan kekin üzerine şerbeti dökün.

10) En son olarak üzerine krema veya krem şanti sürün.

11) Krem şanti için süt ve toz şanti iyice çırpılır ve buzdolabında 15-20 dk beklettikten sonra kekin üzerine sürülür.

12) Krema sürdükten sonra üzerine haşhaş serpip servis yapın.

AFİYET OLSUN!''',
              ) ,
              color: Colors.grey.shade700,
              text: 'YAPILIŞ',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomKalori(
                text: '''1 diliminde 348 kalori bulunan, orta kalorili tatlı olan revani, sürekli kullanımında kilo aldırır.'''
              ) ,
              color: Colors.grey.shade700,
              text: 'KALORİ',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomResim(
                image: "assets/resimler/hashasli_revani.jpg",
              ) ,
              color: Colors.grey.shade700,
              text: 'RESİM',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomYore(
                text: '''Revani, Türk mutfağındaki tatlılardan biridir. Osmanlı döneminde Ermenistan'ın ve Erivan'ın fethedilmesi şerefine Saray aşçılarının icat ettikleri ve Erivan zaferi sebebiyle 'Revani' adı verdikleri bir tatlıdır.''',
              ) ,
              color: Colors.grey.shade700,
              text: 'YÖRE',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomSure(
                text: '''
                
170 derecede 30 dakika kadar pişirilir.                
                
             
                
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