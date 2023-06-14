import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_tarihce.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/components/custom_yore.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';


class Islim_kebabi extends StatefulWidget {

  @override
  _Islim_kebabiState createState() => _Islim_kebabiState();
}

class _Islim_kebabiState extends State<Islim_kebabi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('İSLİM KEBABI'),
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
4 adet orta boy patlıcan

3 yemek kaşığı zeytinyağı

2 adet orta boy domates

2 adet orta boy yeşil biber

Köftesi için:

500 gram orta yağlı kıyma

1 adet kuru soğan (rendelenmiş)

4 yemek kaşığı galeta unu

2 diş sarımsak (ezilmiş)

1 adet yumurta

1 çay kaşığı tuz

1 çay kaşığı pul biber

1 çay kaşığı kimyon

1 çay kaşığı karabiber

Sosu için:

2 yemek kaşığı zeytinyağı

2 adet domates (rendelenmiş)

1 diş sarımsak (ezilmiş)

Yarım su bardağı sıcak su

Yarım çay kaşığı tuz

1 çay kaşığı karabiber''',
              ) ,
              color: Colors.grey.shade700,
              text: 'TARİF',
            ),

            SizedBox(width: 50,),

            MyElevatedButton(
              page:CustomYapilis(
                text: '''

1) Kabuklarını alacalı şekilde soyduğunuz patlıcanları keskin bir bıçak yardımıyla uzun ince şeritler halinde dilimleyin. Acısının çıkması için tuzlu suda bekletin.

2) Orta yağlı dana kıymayı karıştırma kabına alın. Rendelenmiş kuru soğan, yumurta ve galeta unu, sarımsak, tuz, karabiber, pul biber ve kimyon katın.

3) Köfte harcını özleşene kadar yaklaşık 10-15 dakika yoğurun.Köfte harcını altı cevizden biraz daha büyük parçalar ayırın.

4) Avuç içinizde yuvarladığınız köfteleri,  tavada arkalı önlü ters çevirerek pişirin.

5) Tuzlu suda dinlenen patlıcanların suyunu süzüp bol suda durulayın. Üzerlerini bir kağıt havlu yardımıyla kurulayın. Yağı kızdırdığınız tavada arkalı önlü ters çevirerek kızartın. Fazla yağını kağıt havlu yardımıyla alın.

6) Sap kısımlarını aldığınız yeşil biberleri dört eşit parçaya bölün. Cherry domatesleri ikiye bölün.

7) İki adet kızarmış patlıcan şeridini artı şeklini alacak şekilde servis tabağına yerleştirin. Orta kısmına bir adet kızarmış köfte koyup kapatın.

8) Üzerine bir parça yeşil biber ve cherry domates yerleştirip kürdanla tutturun. Tüm köfteleri aynı şekilde patlıcan şeritlerine sardıktan sonra fırın tepsisine yerleştirin.

9) Sosu için; zeytinyağını küçük bir sos tenceresinde kızdırın. Rendelenmiş domates ve  sarımsağı pişirin. Tuz ve karabiberini de ekledikten sonra 4-5 dakika kadar kaynatıp ocaktan alın.

10) Hazırladığınız sosu patlıcanları aldığınız fırın tepsisine aktarın.

11) İslim kebaplarını önceden ısıtılmış 180 derece fırında 30 dakika kadar pişirdikten sonra sıcak olarak servis edin.

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

İslim Köftenin 100 gramında 86 kalori vardır.

Besin değeri olarak:

5 gr protein

6 gr yağ

2.86 gr karbonhidrat içermektedir.''',
              ) ,
              color: Colors.grey.shade700,
              text: 'KALORİ',
            ),

              SizedBox(width: 40,),

            MyElevatedButton(
              page:CustomTarihce(
                text: '''

Eskiden toprak kaplarda ağzı kapalı olarak pişirilen bu yemek kendi buharı ile piştiği için buhar kelimesiyle özdeşleşmiş. Türkçeye uyarlanmış.


Muhtemel ki; İngilizlerin Osmanlı topraklarını işgali esnasında vuku bulan hadisenin bir ürünü olarak,kebaba bu isim verilmiş.''',
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
                image: "assets/resimler/islim_kebabi.jpg",
              ) ,
              color: Colors.grey.shade700,
              text: 'RESİM',
            ),

              SizedBox(width: 50,),

            MyElevatedButton(
              page:CustomYore(
                text: '''İslim kebabı, Gaziantep’in meşhur yemekleri arasında olmakla birlikte hemen hemen her bölgede severek yapılan ve sunulan bir yemektir.''',
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

Patlıcanlar artı şeklinde serilip ortasına köfte konulur ve kapatılır üzerine domates ve biber konularak kürdanla sıkı durması sağlanır. Daha sonra salçalı su üzerlerine dökülüp üzeri yanmayacak şekilde 20 dk pişirilir.


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