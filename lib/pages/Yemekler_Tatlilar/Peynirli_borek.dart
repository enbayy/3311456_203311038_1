import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';

class Peynirli_borek extends StatefulWidget {

  @override
  _Peynirli_borekState createState() => _Peynirli_borekState();
}

class _Peynirli_borekState extends State<Peynirli_borek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('PEYNİRLİ BÖREK'),
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
1 şişe soda

2 yumurta

1 çay bardağı sıvı yağ

Kabartma tozu

Margarin

Peynir''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'TARİF',
                  ),


                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''
1) Kabartma tozu aldığın kadar un yoğur. İçine yarım margarin at.

2) Dolapta 20 dakika dinlensin.

3) Dolaptan çıkardıktan sonra içine margarin sür.

4) Katla tekrar 20 dakika dinlensin.

5) Tekrar açarak yağ sür ve katla. 20 dakika dinlensin

6) Sonrasında içine peynirleri koy kapat.

7) Fırında 200 derecede 25-30 dakika pişir.

AFİYET OLSUN!
''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''100 gramında 259 kcal kalori bulunmaktadır.
                  
                  
                  
1 Porsiyon yani 150 gram Peynirli Börekte 389 kalori bulunmaktadır.



''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomResim(
                      image: "assets/resimler/peynirliborek.JPG",
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'RESİM',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomSure(
                      text: '''
Hazırlık aşamasında 1 saat.


200 derece fırında 25-30 dakika pişirin.
                      
                      


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