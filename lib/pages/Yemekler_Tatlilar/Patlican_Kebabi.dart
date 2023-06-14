import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_tarihce.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/components/custom_yore.dart';
import '../../constant/custom_elevatedButton.dart';

class Patlican_kebabi extends StatefulWidget {

  @override
  _Patlican_kebabiState createState() => _Patlican_kebabiState();
}

class _Patlican_kebabiState extends State<Patlican_kebabi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('PATLICAN KEBABI'),
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
500 gr kemiksiz koyun ya da dana eti

1 kg patlıcan

Yarım kg domates

Yarım demet kıyılmış maydanoz

Yarım bardak zeytinyağı

1 çorba kaşığı margarin ya da tereyağı

Yeteri kadar et suyu

Tuz ve karabiber''',
                ) ,
                color: Colors.grey.shade700,
                text: 'TARİF',
              ),

              SizedBox(width: 50,),

              MyElevatedButton(
                page:CustomYapilis(
                  text: '''

1) Patlıcanlar alaca soyulduktan sonra yuvarlak dilimler halinde doğranır.

2) Düzenli bir biçimde dizildikten sonra, üzerine biraz tuz serpilir ve bekletilir. Böylece acımtırak suyu süzülür.

3) Süzüldükten sonra bol suda yıkanır, aynı zamanda etimiz kuşbaşı doğranır.

4) Tencereye alınıp suyu salıncaya kadar karıştırılarak kavrulur.

5) Suyunu çekince bir kaşık zeytinyağı ile kızartılır.

6) Kızaran patlıcanlar kevgirle yağını süzdürdükten sonra tavadan çıkartılır ve tepsiye yayılır.

7) Bütün patlıcanlar kızarınca, üstüne tencerede kızartılmış olan et boşaltılır.

8) Kabuğu soyulmuş, ünce doğranmış domates, bir tutam tuz, karabiber ve bir kaşık margarinle tencerede koyu bir salça olacak şekilde pişirilir ve, tepsideki patlıcan ve etlerin üstüne boşaltılır.

9) Yeteri kadar et suyu ilave edilerek orta ateşte veya fırında pişirilir.

10) Yemeğimiz suyunu çekince ocaktan veya fırından alınır ve üzerine kıyılmış maydanoz serpilerek sıcak sıcak servis yapılır.

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

Patlıcan kebabının 100 gramında 102 kalori bulunmaktadır.


Ortalama patlıcan kebabı kalori hesabı şu şekildedir: 1 Porsiyon Patlıcan Kebabı (270 gr): 276 kcal.


1 Porsiyon Köfteli Patlıcan Kebabı (330 gr): 282 kcal.

''',
                ) ,
                color: Colors.grey.shade700,
                text: 'KALORİ',
              ),

              SizedBox(width: 40,),

              MyElevatedButton(
                page:CustomTarihce(
                  text: '''

Patlıcan kebabı, sığır ve kuzu gibi ince doğranmış (kıyılmamış) etle sıra halinde katmanlanan patlıcan parçalarından oluşur. Şişe geçirilip ateşte pişirilebilir.

Gaziantep ve Güney Türkiye'nin diğer bölgelerinde, insanlar geleneksel olarak evde arta kalan patlıcan ve tavuk etinden bir tepsi patlıcan kebabı hazırlar, sonra odun ateşinde pişmek üzere yerel bir fırına götürürdü.

Fırında patlıcan kebabı bir tabakta şişle veya yuvarlak bir tavaya dizilmiş malzemelerle, karabiber gibi baharatlarla yapılabilir ve çiğ soğan ve yufka veya lavaş adı verilen yumuşak bir Türk ekmeği ile yenebilir.''',
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
                  image: "assets/resimler/patlican_kebabi.jpg",
                ) ,
                color: Colors.grey.shade700,
                text: 'RESİM',
              ),

              SizedBox(width: 50,),

              MyElevatedButton(
                page:CustomYore(
                  text: '''Gaziantep ve Güney Türkiye'nin diğer bölgelerinde, insanlar geleneksel olarak evde arta kalan patlıcan ve tavuk etinden bir tepsi patlıcan kebabı hazırlar, sonra odun ateşinde pişmek üzere yerel bir fırına götürür.''',
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

Sosu ve 1 çay bardağı suyu patlıcan ve köftelerin üzerine gelecek şekilde gezdirin ve Önceden ısıtılmış 200 derece fırında tercihen turbo veya fanlı fırında 50-60 dakika kadar pişer.

Tencerede ne kadar sürede pişer?

Kızartma işlemi bitince patlıcanları fazla derin olmayan büyük bir tencereye dizin. Üzerine küçük parçalara dilimlenmiş domates ve biberi ekleyin. Salçaları yarım su bardağı ile kıvamını açıp üzerlerine gezdirin . Kızartma yağından 5 yemek kaşığı ekleyip kapağı kapalı bir şekilde kısık ateşte yaklaşık 1 saat pişirin.



Kaç dakikada pişti?''',
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