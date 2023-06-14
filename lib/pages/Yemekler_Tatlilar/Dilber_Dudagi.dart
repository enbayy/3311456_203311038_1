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


class Dilber_dudagi extends StatefulWidget {

  @override
  _Dilber_dudagiState createState() => _Dilber_dudagiState();
}

class _Dilber_dudagiState extends State<Dilber_dudagi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('DİLBER DUDAĞI'),
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
1 su bardağı yoğurt                
                
1 su bardağı sıvı yağ              
                
2 adet yumurta                
                
1 yemek kaşığı sirke                
                
Yarım paket kabartma tozu              
                
1 silme çay kaşığı tuz                
                
4,5 (5’e yakın) su bardağı un                
                
Açmak için:                
                
Mısır nişastası                
                
Arasına:                
                
İri kırılmış ceviz                
                
Üzerine sürmek için;                
                
100 gram tereyağı                
                
Şerbeti için:                
                
3,5 su bardağı şeker

3,5 su bardağı su

1 yemek kaşığı limon suyu''',
              ) ,
              color: Colors.grey.shade700,
              text: 'TARİF',
            ),

          SizedBox(height: 10,),

          MyElevatedButton(
            page:CustomYapilis(
              text: '''
              
1) Dilber dudağı tatlısı hamuru için olan malzemeler yoğurma kabına alınarak hamur yoğrulur.

2) Yumuşak bir hamur elde edilir. Hamur 24 eşit parçaya ayrılarak elle yuvarlatılır.

3) Hazırlanan bezeler bir tepsiye dizilir.

4) Üzerine temiz bir bez örtülerek 1 saat kadar dinlendirilir.

5) Daha sonra her beze sıra ile nişasta serpilerek 12-15 cm kadar çapında açılır.

6) Sıra ile aralarına nişasta serpilerek 12 kat üst üste dizilir. (Diğer 12  tanesi sonra hazırlanır.)

7) Daha sonra 12 kat yufka merdane ile yavaşça yaklaşık 4 mm. kalınlığında açılır.

8) Hamur yumuşak olduğu için kolaylıkla açılır endişe etmeyin.

9) Bir çay bardağı veya kurabiye kesme kalıbı ile daire şeklinde kesilir.

10) Keserken mümkün olduğunca birbirine yakın yaparak aralarda boşluk bırakmamaya özen gösterilir.

11) Her dairenin ortasına bir kaç parçaya kırılmış ceviz içi yerleştirilerek ay şeklinde kapatılır. (Hamurun tam kapanması için bastırmanıza gerek yok, sadece kapatılması yeterli. Cevizi ise dövülmüş kullanmanızı önermem çünkü şerbetlendiğinde dövülmüş ceviz içinden akabilir.)

12) Hazırlanan tatlılar fırın tepsisine dizilir. Kendisi yağlı bir hamur olduğu için tepsinizin yağlanmasına gerek yok.

13) Tatlıların arasında çok fazla boşluk bırakılmasına da gerek yok, neredeyse birbirine değecek gibi sıkı bir şekilde dizilirse bu ölçü ile bir fırın tepsisi dolusu tatlı elde edilebilir.

14) Bir tavada tereyağı eritilir, parlaklık vermesi için dilenirse 1-2 yemek kaşığı zeytinyağı da eklenebilir. Fırça ile tüm tatlıların üzeri bolca yağlanır.

15) 190 derece ısıtılmış fırında üzerleri güzelce kızarana kadar pişirilir. Hızlı piştiği için kontrollü olmanızda fayda var.

16) Fırından çıkan tatlılar uygun bir borcama alınır.

17) Önceden hazırlanın ılıtılan şerbet tatlının üzerine gezdirilir.

18) Birkaç saat şerbetini çekmesi için bekletildikten sonra isteğe göre Hindistan cevizi veya toz fıstıkla süslenerek servis edilir.

19) Dilber dudağı tatlısının şerbeti için su ve şeker karıştırılıp kaynatılır. 5 dakika kadar kaynadıktan sonra limon suyu eklenerek  20 dakika daha kaynatıp ocaktan alınır.              
              
AFİYET OLSUN!''',
            ) ,
            color: Colors.grey.shade700,
            text: 'YAPILIŞ',
          ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomKalori(
                text: '''
                
Dilber Dudadğının 100 gramında 331 kcal kalori bulunmaktadır.   
             
                
1 Porsiyon (Orta) yani 60 gramlık miktarında 199 kalori bulunmaktadır.''',
              ) ,
              color: Colors.grey.shade700,
              text: 'KALORİ',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomResim(
                image: "assets/resimler/dilber_dudagi.jpg",
              ) ,
              color: Colors.grey.shade700,
              text: 'RESİM',
            ),

          SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomYore(
                text: '''Dilber Dudağı Bursada yapılan bir tatlıdır.''',
              ) ,
              color: Colors.grey.shade700,
              text: 'YÖRE',
            ),

          SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomSure(
                text: '''

Önceden ısıtılmış 170 derece fırında 17-20 dakika pişirin. Tatlıyı fırından çıkartın ve ılıklaşmasını bekleyin. Ilık tatlının üzerine ılık şerbeti gezdirin ve üstünü kapatıp bir gece bekletin. Dilber dudakları şerbeti çektikleri zaman servise hazırlar.


Kaç dakikada pişti?
''',
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