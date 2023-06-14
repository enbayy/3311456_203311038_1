import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';

class gelin_cantasi extends StatefulWidget {

  @override
  _gelin_cantasiState createState() => _gelin_cantasiState();
}

class _gelin_cantasiState extends State<gelin_cantasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('GELİN ÇANTASI'),
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
1 adet yumurta

1 fincan şeker

1 paket vanilya

1 çay kaşığı kabartma tozu

Yarım fincan sıvı yağ

1 bardak süt

1 bardak un

2 kaşık kakao

İçi için:

Köpürtülmüş krem şanti

Üzeri için:

Hindistan cevizi''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'TARİF',
                  ),


                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''
1) Bütün malzemeler birleştirilir kek hamuru hazırlanır gibi hazırlanır.

2) Tava ısıtılır. Yemek kaşığıyla 1 kaşık tavaya konulur. Sadece 1 yüzü pişirilir.

3) Pişirildikten sonra bir tabağa alınır.

4) Tabak bir poşete koyulur.

5) Soğuyunca içine krem şanti koyulup 2'ye katlanır.

6) Not: Krepi soğutup krem şantiyi koyunuz.

AFİYET OLSUN!
''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''Gelin çantasının kalori değeri 271/kcal'dir.
                  
                                   


''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomResim(
                      image: "assets/resimler/gelin_cantasi.jpg",
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'RESİM',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomSure(
                      text: '''
Gelin çantası tarifini hazırlama süresi 15 dakika,


Pişirme süresi 10 dakikadır.
                      
                      


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