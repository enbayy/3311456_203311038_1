import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_tarihce.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/components/custom_yore.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';


class Saksuka extends StatefulWidget {

  @override
  _SaksukaState createState() => _SaksukaState();
}

class _SaksukaState extends State<Saksuka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Şakşuka'),
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
4 adet patlıcan

3 adet yeşil biber

1 adet kuru soğan

4 diş sarımsak

4 adet domates

1 tatlı kaşığı domates salçası

1 çay kaşığı şeker

Tuz, istenilen baharatlar

1 çay bardağı sıcak su

Kızartmak için sıvı yağ''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİF',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYapilis(
                        text: '''

1) Patlıcanları küp küp doğrayıp tuzlu suya koyalım, bir müddet bekletelim.

2) Daha sonra sıvı yağı uygun bir tavaya alalım, kızdıralım.

3) Tuzlu sudan alıp kuruladığımız patlıcanlarımızı tavaya alalım.

4) Soğan ve sarımsağı da yemeklik doğrayarak az miktarda yağda kavuralım.

5) Yeşil biberleri  doğrayalım ve tavaya alalım.

6) Üzerine rendelediğimiz domatesi ve salçayı da ekleyerek karıştıralım.

7) Bir süre sonra da şeker, tuz, karabiber ve pul biberi ekleyelim ve tekrardan karıştıralım.

8) Sıcak suyu da ilave ederek 4-5 dakika kadar pişirelim.

9) Son olarak kızarttığımız patlıcanları da tavaya alalım ve pişirdiğimiz sos ile harmanlanmasını sağlayalım. Şakşukamız servise hazır.

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

100 gram Şakşuka, ortalama 166,49 kaloridir.

Besin değeri olarak:

8,02 karbonhidrat

2,97 protein

13,60 yağ değerine sahiptir.

''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'KALORİ',
                    ),

                    SizedBox(width: 40,),

                    MyElevatedButton(
                      page:CustomTarihce(
                        text: '''

Şakşuka patlıcan, biber, sakız kabağı gibi sebzelerin kavrulduktan sonra, üzerine domates sosu dökülmesiyle hazırlanan, Türk mutfağından meze. Genellikle yoğurt veya sarımsaklı yoğurt ile sunulur.

''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİHÇE',
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
                      page:CustomResim(
                        image: "assets/resimler/saksuka.jpg",
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'RESİM',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYore(
                        text: '''Şakşuka, başka yöre mutfaklarında da üç aşağı beş yukarı benzer uygulamalarla hazırlanan Rumeli menşeili bir çeşit mezedir. Rumeli insanının Anadolu'da yayılış gösterdiği geniş bir coğrafyada Şakşuka tarifine rastlıyoruz. Diğer yöre mutfaklarında patates, kabak gibi diğer sebzeler de kızartılarak tarife ilave edilir.
                        
                        ''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'YÖRE',
                    ),

                  ],
                ),

                SizedBox(height: 30,),

                MyElevatedButton(
                  page:CustomSure(
                    text: '''

Yeşil biberleri doğrayalım ve tavaya alalım. Üzerine rendelediğimiz domatesi ve salçayı da ekleyerek karıştıralım. Bir süre sonra da şeker, tuz, karabiber ve pul biberi ekleyelim ve tekrardan karıştıralım. Sıcak suyu da ilave ederek 4-5 dakika kadar pişirelim.


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