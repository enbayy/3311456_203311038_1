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


class Hashasli_corek extends StatefulWidget {

  @override
  _Hashasli_corekState createState() => _Hashasli_corekState();
}

class _Hashasli_corekState extends State<Hashasli_corek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('HAŞHAŞLI ÇÖREK'),
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
1 kilo un
                  
1 küçük paket maya

1 tatlı kaşığı tuz 

Yeteri kadar su

Haşhaş

Sıvı yağ

Üstüne sürmek için;

Yumurta

Yoğurt

İsteğe bağlı üzerine susam veya çörek otu''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'TARİF',
                  ),


                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''
                      
1) Un, tuz, maya ve su yoğurulacak. Yumuşak bir hamur elde edilcek.

2) Mayalanması beklendikten sonra içindeki havanın çıkması için tekrar yoğurulacak.

3) Hamuru tezgahın üstüne alıp, inceltmek için el yardımıyla açılır.

4) Açılan hamurun üzerine haşhaş ve sıvı yağı karıştırılıp hamurun üzerine sürülür.

5) Rulo şeklinde katlanır.

6) Son olarak kesilerek şekil verilir.

7) Yağlanmış tepsiye dizilir ve yarım saat beklendikten sonra üzerine yoğurt ve yumurtayı çırpıp üzerine sürülüp fırına verilir.

8) 180 - 200 derecede 40 dk pişirilir.

AFİYET OLSUN!''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''100 gram Haşhaşlı Çörek, ortalama 318,12 kaloriye sahiptir.
                  
43,27 karbonhidrat,

9,77 protein, 

11,92 yağ değerine sahiptir.

''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomResim(
                      image: "assets/resimler/hashasli_corek.jpg",
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'RESİM',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYore(
                      text: '''Haşhaşlı çörek Konya yöresine aittir.
                      
                      
                      ''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YÖRE',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomSure(
                      text: '''180 - 200 derecede 40 dk pişirilir.
                      
                      


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