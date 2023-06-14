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


class Ispanakli_pasta extends StatefulWidget {

  @override
  _Ispanakli_pastaState createState() => _Ispanakli_pastaState();
}

class _Ispanakli_pastaState extends State<Ispanakli_pasta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('ISPANAKLI PASTA'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            ListBody(

                children: [

                  MyElevatedButton(

                    page:CustomTarif(
                      text: '''4 yumurta
                  
1 bardak ıspanak suyu

4 çay bardağı şeker 

4-5 çay bardağı un

Kabartma tozu

Vanilya 

1 bardak portakal suyu

İsteğe göre kivi, çilek, üzüm 

Kreması için:  

4 su bardağı süt

1 kaşık şeker

5 kaşık mısır nişastası

Tereyağ''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'TARİF',
                  ),


                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''
                      
1) Ispanağı az su ile haşlayıp blenderda küçük parçalar haline getiriyoruz.

2) Yumurta ve şekeri karıştırıyoruz köpürene kadar.

3) Haşladığımız ıspanak suyunu, unu, kabartma tozu ve vanilyayı karıştırıyoruz kek kıvamına gelene kadar.

4) Yağlı kağıdın üzerine tepsiye döküyoruz.

5) Sonrasında fırına veriyoruz. Fırında 170 derecede pişirilir.

6) Çıkardıktan sonra portakal suyuyla kekini ıslatıyoruz.

7) Süt, şeker, mısır nişastası ve vanilyayı karıştırarak pişiriyoruz. Sonra içine terayağ atıyoruz.

8) İçi gözükmeyecek şekilde kekin üzerine sürünüz.

9) Son olarak pastanın üstünü süsleyebilirsiniz.

AFİYET OLSUN!''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''100 gramında 193 kcal kalori bulunmaktadır.
                      
                  
1 Porsiyon (Orta) yani 165 gramlık miktarında 319 kalori bulunmaktadır.

''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomResim(
                      image: "assets/resimler/ispanakli_pasta.JPG",
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'RESİM',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomSure(
                      text: '''Orta boy fırın tepsisine dökülür, önceden ısıtılmış 175 derecelik fırında yaklaşık olarak 30 35 dk pişirilir.
                      


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