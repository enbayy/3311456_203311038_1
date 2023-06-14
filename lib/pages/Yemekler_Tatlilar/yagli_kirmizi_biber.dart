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


class Yagli_Kirmizi_Biber extends StatefulWidget {

  @override
  _Yagli_Kirmizi_BiberState createState() => _Yagli_Kirmizi_BiberState();
}

class _Yagli_Kirmizi_BiberState extends State<Yagli_Kirmizi_Biber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YAĞLI KIRMIZI BİBER'),
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
1 kg kırmızı biber

1 su bardağı üzüm sirkesi

Yarım su bardağı sıvı yağ

Yarım yemek kaşığı kaya tuzu

7-8 dal maydanoz

7-8 diş sarımsak''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİF',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYapilis(
                        text: '''
                        
1) Kırmızı biberleri güzel bir şekilde yıkayalım. Bıçak ile sap kısımlarını kesip ortadan ikiye keselim ve tohumlarını çıkartalım.

2) Daha sonra biberleri 2 parmak kalınlığında doğrayalım.

3) Ocaktaki tencereye sirkeyi alalım. Üzerine sıvı yağı, kaya tuzunu ekleyelim ve karıştıralım.

4) Doğradığımız biberleri tencereye alarak 3-4 dakika kadar haşlayalım.

5) Hafifçe diriliğini kaybeden biberleri genişçe bir tepsiye alalım ve soğumaya bırakalım.

6) Biberler soğuduktan sonra doğradığımız maydanozları, bir kaç parçaya böldüğümüz sarımsağı da ekleyelim ve karıştıralım.

7) Uygun bir kavanoza hazırladığımız biberleri dolduralım, üzerine de tepsinin dibinde kalan yağ ve sirke karışımını boşaltalım.

8) Ağzını sıkı bir şekilde kapatalım ve 1 gece dışarıda beklettikten sonra buzdolabına kaldıralım. Yağlı biber turşumuz hazır.

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

100 gramında 19 kalori bulunur.


1 Porsiyon (Orta) yani 160 gramında 31 kalori bulunmaktadır.


''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'KALORİ',
                    ),

                    SizedBox(width: 40,),

                    MyElevatedButton(
                      page:CustomResim(
                        image: "assets/resimler/yagli_kirmizi_biber.jpg",
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'RESİM',
                    ),

                  ],
                ),

                SizedBox(height: 30),

                    MyElevatedButton(
                      page:CustomSure(
                        text: '''

Biberleri kaynattığınız suyun içerisine sarımsakları ekleyin. Daha sonra suyu cam kavanozlara paylaştırın. 

Cam kavanozların içerisine biberleri de yerleştirip 2 gece bu şekilde güneş almayan bir yerde bekletin.

2. günün sonunda yağlı kırmızı biber turşusunu afiyetle tüketebilirsiniz.


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