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


class Yesil_Mercimek_Salatasi extends StatefulWidget {

  @override
  _Yesil_Mercimek_SalatasiState createState() => _Yesil_Mercimek_SalatasiState();
}

class _Yesil_Mercimek_SalatasiState extends State<Yesil_Mercimek_Salatasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YEŞİL MERCİMEK SALATASI'),
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
1 su bardağı yeşil mercimek

Yarım su bardağı pirinç

4/5 adet taze soğan

Yarım demet dereotu

1 adet orta boy rendelenmiş havuç

1 tatlı kaşığı sumak

Nar ekşisi

Zeytinyağı

Tuz''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİF',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYapilis(
                        text: '''
1) 1 su bardağı mercimeğimiz ayıklanıp, güzelce haşlanır. Ayrı bir tencerede pirinçlerimiz de aynı işlemi görür.

2) Suları süzülüp, mercimek ve pirinçler karıştırılır.

3) İçerisine; havuç rendemiz, ince kıydığımız dereotu, ve gene ince doğradığımız taze soğanlar yeşil şapları dahil olmak üzere eklenir.

4) Sumak ve nar ekşisi konuya dahil olup, tuzu da katılır.

5) Son aşamada zeytinyağı ilavesi yapılıp, güzelce karıştırılır.

6) Buzdolabında biraz soğuması için bekletildikten sonra, salatamız servise hazırdır.

AFİYET OLSUN!
''',
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

Mercimek Salatasının 100 gramında 91 kalori bulunur.


1 Porsiyon yani 307 gram Mercimek Salatasında 279 kalori bulunmaktadır.


''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'KALORİ',
                    ),

                    SizedBox(width: 40,),

                    MyElevatedButton(
                      page:CustomResim(
                        image: "assets/resimler/yesil_mercimek_salatasi.jpg",
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'RESİM',
                    ),

                  ],
                ),

                SizedBox(height: 30),

                Row(
                  children: [
                    const SizedBox(
                      width: 60,
                    ),

                    MyElevatedButton(
                      page:CustomYore(
                        text: '''Mercimek salatası hangi yöreye aittir?
                        
                        
Oldukça güzel bir salata türüdür. Antakya taraflarında meşhurdur.

''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'YÖRE',
                    ),


                SizedBox(width: 70,),

                MyElevatedButton(
                  page:CustomSure(
                    text: '''

Bu tarifi hazırlamak için toplamda 25 dakika gerekmektedir. 

Bu sürenin 5 dakikası hazırlık, 20 dakikası da pişirme süresidir. 


Kaç dakikada pişti?''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'SÜRE',
                ),
                  ],
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