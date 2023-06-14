import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';


class c_otlu_kurabiye extends StatefulWidget {

  @override
  _c_otlu_kurabiyeState createState() => _c_otlu_kurabiyeState();
}

class _c_otlu_kurabiyeState extends State<c_otlu_kurabiye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('ÇÖREK OTLU KURABİYE'),
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
250 gram margarin

1 çay bardağı sıvı yağ

1 yemek kaşığı çörek otu

1 yumurta sarısı üstüne, beyazı içine

1 tatlı kaşığı tuz

1,5 yemek kaşığı şeker

1 paket kabartma tozu

Aldığı kadar un''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'TARİF',
                  ),


                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''
1) Bütün malzemeler kurabiye hamuru kıvamında yoğurulur.

2) Tezgahta açılarak çay bardağıyla şekil verilir.

3) Tepsiye dizilir.

4) Fırında 180 derecede 25-30 dk pişirilir.

AFİYET OLSUN!
''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''100 g içinde 551 kadar kalori mevcut.
                  
                                   


''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomResim(
                      image: "assets/resimler/c_otlu_kurabiye.jpg",
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'RESİM',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomSure(
                      text: '''
Fırında 25-30 dk pişirilir.

                      
                      


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