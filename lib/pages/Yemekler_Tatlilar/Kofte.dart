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

class Kofte extends StatefulWidget {

  @override
  _KofteState createState() => _KofteState();
}

class _KofteState extends State<Kofte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('KÖFTE'),
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
500 gr orta yağlı kıyma

1 orta boy rendelenmiş soğan

1 diş sarımsak

1 adet yumurta

Yarım çay bardağı galeta unu

1 yemek kaşığı sıvı yağ

1 avuç ince kıyılmış maydanoz

1,5 çay kaşığı tuz

Yarım çay kaşığı karabiber

1 çay kaşığı kimyon''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'TARİF',
                ),

                SizedBox(width: 50,),

                MyElevatedButton(
                  page:CustomYapilis(
                    text: '''

1) Uygun bir yoğurma kabı içerisine kıymamızı alalım. Üzerine rendelenmiş ve suyu sıkılmış soğan, küçük küçük kesilmiş sarımsak, yumurta, galeta unu, sıvı yağ, maydanoz, tuz, karabiber ve kimyonu alalım ve malzemelerimiz güzelce karışana kadar yoğuralım.

2) Hazırladığımız harcımızın üzerini streç ile örtelim ve 30 dakika kadar buzdolabında dinlendirelim.

3) Sürenin sonunda harcımızı dolaptan alalım, elimizle parçalar kopartarak  şekillendirelim. Ben şeklini oval yaptım ancak siz dilediğiniz gibi şekillendirebilirsiniz. Ancak burada köftelerinizin içlerinin de pişmesi için ince olmasına dikkat etmelisiniz.

4) Şekillendirdiğimiz köftelerimizi uygun bir tabak içerisine alalım. Dilerseniz köftelerinizi bu aşamada da dinlendirebilirsiniz.

5) Köftelerimizi pişirmek için ocaktaki tavamıza sıvı yağı alalım ve ısıtalım.

6) Ardından köftelerimizi tavamıza alalım ve her iki tarafını da çevirerek pişirelim.

7) Pişen köftelerimizin fazla yağının süzülmesi için kağıt havlu serdiğimiz tabağa alalım ve servis edelim.

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

Köftenin 100 gramında 168 kalori bulunmaktadır.


Köftenin 1 porsiyonu (140 gr) 235 kalori, 1 köfte kadarı ( 30 gr) 50 kaloridir.

''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'KALORİ',
                ),

                SizedBox(width: 40,),

                MyElevatedButton(
                  page:CustomTarihce(
                    text: '''

Köftenin Kökeni Orta Asya ve Mezopotamya olarak kabul edilir. Birçok yazıt ve kitabede ezik et anlamına gelen 'kuffette' diye söz edilir.

Dünyanın hemen hemen her mutfağında önemli bir yere sahip olan köftenin dünyaya bu coğrafyadan yayıldığı kabul edilir.

Köfteyi 16. yüzyılda da Osmanlı saray yemekleri arasında görmek mümkün. Kanunî Sultan Süleyman'ın oğulları Şehzade Bayezid ve Şehzade Cihangir için 1539 yılı Kasım ayında yapılan sünnet düğününde verilen ziyafetlerde 'köfte ve has ekmek' de davetlilere ikram edilen yemeklerdendi.''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'TARİHÇE',
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
                  page:CustomResim(
                    image: "assets/resimler/kofte.jpg",
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'RESİM',
                ),

                SizedBox(width: 50,),

                MyElevatedButton(
                  page:CustomYore(
                    text: '''O, meşhur köfteler denince ilk akla gelendir. Kuzu ve dana etinin görece yağlı kısımlarından hazırlanan ve yapımından pişirilmesine, işlenmesinden bekletilmesine kadar türlü zahmetli süreçlerden geçen Tekirdağ köfte, içerdiği irmikle farklı bir lezzet yelpazesinde yer alır.''',
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

Yaklaşık 30-35 dakika içerisinde köfteler pişecektir.



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