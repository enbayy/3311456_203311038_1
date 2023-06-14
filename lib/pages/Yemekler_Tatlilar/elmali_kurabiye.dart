import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';


class elmali_kurabiye extends StatefulWidget {

  @override
  _elmali_kurabiyeState createState() => _elmali_kurabiyeState();
}

class _elmali_kurabiyeState extends State<elmali_kurabiye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('ELMALI KURABİYE'),
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
250 gram tereyağı

1 çay bardağı sıvı yağ

3 çorba kaşığı yoğurt

1 adet yumurta

1 su bardağı pudra şekeri

1 paket vanilya

1 paket kabartma tozu

Aldığı kadar un (4 su bardağı)

Elma harcı için:

3 adet elma

3 yemek kaşığı şeker

1 yemek kaşığı tarçın''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'TARİF',
                  ),


                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''
                      
1) Elmalı kurabiye hamuru için; un hariç bütün malzemeleri bir kaba alıp yoğuralım iyice karıştıktan sonra unu da ilave edip kulak memesi kıvamında bir hamur elde edene kadar yoğuralım.

2) Elmalı harcı için elmaları rendeleyelim .Şekeri de ilave edip ocağın altını açalım, elmalar suyunu salıp çekene kadar 5 dk. pişirelim ve ocağı kapatalım.

3) Daha sonra tarçını da ekleyip karıştıralım. Geniş bir kaba alarak soğuması için bekletelim.

4) Merdane yardımı ile hamuru açalım. Açtığımız hamurdan çay bardağı büyüklüğünde yuvarlaklar keselim. Dilerseniz aparatla ya da çay bardağı ile kesebilirsiniz. Eğer kurabiyelerinizi daha büyük yapmak isterseniz su bardağı ile de kesebilirsiniz.

5) Ortalarına elmalı harçtan koyup resimdeki gibi hamurun iki kenarını iç harç üzerinde birleştirerek kapatalım. Bu işleme hamur bitene kadar devam edelim.

6) Yağlı kağıt koyulmuş fırın tepsisine dizip 170-180 derecelik fırına atalım. Üzerleri pembeleşmeden fırından alalım. Soğuduktan sonra pudra şekeri serpelim. Elmalı kurabiyelerimiz servise hazır.

AFİYET OLSUN!
''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''1 adet elmalı kurabiye, büyüklüğüne göre 78-160 kalori arasındadır. 
                                      
                                   
1 gram elmalı kurabiye ise yaklaşık 3 kaloridir.

''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomResim(
                      image: "assets/resimler/elmali_kurabiye.jpg",
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'RESİM',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomSure(
                      text: '''
Önceden ısıtılmış 180 derece fırında üzeri kızarana kadar, yaklaşık 20-25 dakika pişirin.

                      
                      


Kaç dakikada pişti?
                  ''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'SÜRE',
                  ),

                ]),

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