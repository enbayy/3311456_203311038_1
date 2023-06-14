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

class Gullac extends StatefulWidget {

  @override
  _GullacState createState() => _GullacState();
}

class _GullacState extends State<Gullac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('GÜLLAÇ'),
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
12 yaprak güllaç

1,5 litre süt

2 su bardağı şeker

Çekilmiş ceviz

2 yemek kaşığı gül suyu (isteğe göre)

Üzeri için:

Toz Antep fıstığı

Kiraz şekerlemesi''',
              ) ,
              color: Colors.grey.shade700,
              text: 'TARİF',
            ),

                SizedBox(height: 10,),

                MyElevatedButton(
                  page:CustomYapilis(
                    text: '''

1) Güllaç tatlısını yapmak için; öncelikle süt ve şekeri tencereye alarak ısıtıyoruz, şekerler tamamen erisin. Bu aşamada sütü çok fazla ısıtmanıza gerek yok, şekerin erimesi yeterli olacaktır.

2) Daha sonra sütü oda sıcaklığında ılınmaya bırakıyoruz. Eğer el yakmayacak şekilde ısıttıysanız tekrar ılıması için beklemenize gerek olmayacaktır. Süt kaynar olursa tatlınız hamur olur o nedenle el yakmayacak şekilde olmalı.

3) Güllaç yaprağının parlak kısmı üste gelecek şekilde ilkini derince bir tepsiye koyuyoruz.

4) Üzerine her yanı ıslanacak şekilde bir iki kepçe süt döküyoruz.

5) Altı güllaç yaprağı için aynı işlemi tekrarlayalım ve 6. katı da ıslattıktan sonra bu kata ceviz serpelim ve üzerine diğer güllaç yapraklarını aynı şekilde ıslatarak serelim.

6) Kalan şekerli sütün içerisine 2 yemek kaşığı gül suyu ekleyip tatlının üzerine gezdirelim. Burada kullandığınız gül suyunun kozmetik ürünü olmamasına dikkat etmelisiniz.

7) Hazırladığımız tatlımızı 2 saat kadar buzdolabında muhafaza edelim.

8) En az 2-3 saat dinlendirdikten sonra üzerini isteğe göre süsleyerek servis edebilirsiniz. Ben toz antep fıstığı ve kiraz şekerlemeleri ile süsledim.

AFİYET OLSUN!''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'YAPILIŞ',
                ),

                SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomKalori(
                text: '''
                
1 dilim güllaç 250 kalori.                

1 porsiyonu yaklaşık 110 gram olan orta boy bir porsiyon güllaç 143 kalori.

1 yaprak güllaç yaprağı 122 kalori.''',
              ) ,
              color: Colors.grey.shade700,
              text: 'KALORİ',
            ),

                SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomResim(
                image: "assets/resimler/gullac.jpg",
              ) ,
              color: Colors.grey.shade700,
              text: 'RESİM',
            ),

                SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomYore(
                text: '''
Güllaç Kastamonulu Ali Usta tarafından yapıldığı için Kastamonu'da baklava olarak sunulmaktadır. Osmanlı mutfağında sık sık hazırlanan bu tatlı, her şehirde severek tüketilir.                ''',
              ) ,
              color: Colors.grey.shade700,
              text: 'YÖRE',
            ),

                SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomSure(
                text: '''

Öncelikle güllaç yapraklarını kolaylık açısından makasla ortadan ikiye keserek kullanabilirsiniz ya da direkt yaprak boyutunda tepside sütleyebilirsiniz. Sütü tencereye alın ve şekerle birlikte eriyene kadar 10 dakika civarı karıştırarak pişirin.



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