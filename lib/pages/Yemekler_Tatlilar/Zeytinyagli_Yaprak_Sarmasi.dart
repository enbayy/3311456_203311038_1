import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/components/custom_yore.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';

class Zeytinyagli_Yaprak_sarmasi extends StatefulWidget {

  @override
  _Zeytinyagli_Yaprak_sarmasiState createState() => _Zeytinyagli_Yaprak_sarmasiState();
}

class _Zeytinyagli_Yaprak_sarmasiState extends State<Zeytinyagli_Yaprak_sarmasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YAPRAK SARMASI'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            ListBody(
              children: [

                Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),

                MyElevatedButton(
                  page:CustomTarif(
                    text: '''
400 g salamura yaprak

1,5 su bardağı pirinç

1 adet büyük boy soğan

1 yemek kaşığı domates salçası

1 yemek kaşığı dolmalık fıstık (opsiyonel)

1 yemek kaşığı kuş üzümü (opsiyonel)

1/4 çay bardağı zeytinyağ

Karabiber

Tuz

1 tatlı kaşığı kuru nane

1,5 su bardağı sıcak su''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'TARİF',
                ),

                SizedBox(width: 50,),

                MyElevatedButton(
                  page:CustomYapilis(
                    text: '''

1) Yaprakları güzelce yıkayıp suya koyun ve tuzunu almak için 1-2 saat suda bekletin.

2) İç harcı için yağı kızdırıp çok minik doğradığınız soğanı ekleyin ve yumuşayana kadar kavurun.

3) Salçayı ekleyip kokusu çıkana kadar kavurun.

4) Yıkayıp süzdüğünüz pirinci ekleyip karıştırın.

5) Kuş üzümü, fıstık, nane, karabiber ve tuzunu ekleyip karıştırın.

6) 1,5 su bardağı sıcak su ekleyip karıştırın ve suyunu çekene kadar pişirin.

7) Tencerenin altına bir sıra boş yaprak dizin.

8) Her bir yaprağın içine uzunlamasına 1 çay kaşığı iç koyup önce yanlarından ortaya katlayın ve ardından rulo şeklinde sarın ve tencereye dizin.

9) Yaprakların en üstünü de bir sıra boş yaprakla kapatın.

10) Üzerine zeytinyağ ve limon suyu gezdirip limon dilimleri koyun ve üzerine bir tabak kapatın.

11) Üzerini geçecek kadar sıcak su koyup kısık ateşte yapraklar ve pirinçler iyice yumuşayana kadar pişirin

AFİYET OLSUN!''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'YAPILIŞ',
                ),

                ],
                ),

                SizedBox(height: 30,),


                Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),

                MyElevatedButton(
                  page:CustomKalori(
                    text: '''

1 yaprak sarma 32 kalori

10 adet sarma 317 kalori.

Bir porsiyon sarma 125 kalori

5 adet zeytinyağlı sarma 158 kalori.

''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'KALORİ',
                ),

                SizedBox(width: 40,),

                MyElevatedButton(
                  page:CustomResim(
                    image: "assets/resimler/yaprak_sarmasi.jpg",
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'RESİM',
                ),

                ],
                ),

                SizedBox(height: 30,),

                Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),

                MyElevatedButton(
                  page:CustomYore(
                    text: '''Asma yaprağıyla olanı Nevşehir, Tokat, Ege mutfağına özgü olan Zeytinyağlı sarma ya da kıymalı sarma şeklinde farklı çeşitleri vardır.''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'YÖRE',
                ),

                SizedBox(width: 70,),

                MyElevatedButton(
                  page:CustomSure(
                    text: '''

Pişme esnasında açılmamaları için; üzerlerine düz bir servis tabağı kapatın. 1,5 su bardağı sıcak su ve 2 yemek kaşığı zeytinyağını da tencereye ekledikten sonra sarmaları, kısık ateşte yaklaşık 35 dakika pişirin.

Arzuya göre; ılık ya da soğuk olarak servis edin.


Kaç dakikada pişti?''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'SÜRE',
                ),

              ],),

              SizedBox(height: 30,),

            ElevatedButton(
              child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 29)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ],
        ),
    ],
      ),
      ),
    );
  }
}