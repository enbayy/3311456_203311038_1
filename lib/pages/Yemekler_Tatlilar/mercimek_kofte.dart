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


class Mercimek_Kofte extends StatefulWidget {

  @override
  _Mercimek_KofteState createState() => _Mercimek_KofteState();
}

class _Mercimek_KofteState extends State<Mercimek_Kofte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MERCİMEK KÖFTE'),
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
1 su bardağı kırmızı mercimek

1,5 su bardağı ince köftelik bulgur

1 baş kuru soğan

1 demet maydanoz

2-3 yemek kaşığı sıvı yağ

1 demet taze soğan

2 yemek kaşığı salça (biber ve domates salçası karışık kullanabilirsiniz)

3 su bardağı su (gerekirse yoğurma aşamasında biraz daha eklenebilir)

Yeteri kadar tuz

Kimyon

Pul biber

Karabiber''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİF',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYapilis(
                        text: '''
                        
1) Mercimek köftesi yapmak için mercimekler yıkanır ve uygun bir tencereye alınarak, üzerini 3 su bardağı su ilave edilir. İyice yumuşayıncaya kadar haşlanır.

2) Suyunu çekince bulgur içine atılır ve yarım saat kadar tencerenin kapağı kapalı olarak bekletilir.

3) Ayrı bir tavada ince kıyılmış soğan sıvı yağda hafif pembeleşene kadar kavrulur, içine salça ilave 1-2 dakika daha kavrularak ocaktan alınır.

4) Yarım saat dinlenen mercimeklere, kavurduğumuz salçalı soğan eklenir ve el yakmayacak bir sıcaklığa geldiğinde, güzelce yoğurulur.

5) İyice karışan köfte harcına tuz ve baharatlar ilave edilerek, tekrar yoğrulur.

6) Son olarak ince kıyılmış maydanoz, ince kıyılmış yeşil soğan ilave edilir. Malzemelerin güzelce karışması sağlanır.

7) Köfte harcı biraz soğuduktan sonra, bütün malzemeler el ile yoğrularak yumurta büyüklüğünde parçalar koparılır.

8) Köftelere şekil verilerek, marul veya roka yaprakları üzerine dizilir.

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

Bu besinin 100 gramında 130 kcal kalori bulunmaktadır.


1 Porsiyon (Orta) yani 225 gramlık miktarında Mercimek Köftesi 293 kalori bulunmaktadır.


''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'KALORİ',
                    ),

                    SizedBox(width: 40,),

                    MyElevatedButton(
                      page:CustomResim(
                        image: "assets/resimler/mercimek_kofte.jpg",
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'RESİM',
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
                      page:CustomYore(
                        text: '''
                        
Gaziantep Malhıtalı Köftesi/ Gaziantep Mercimekli Köftesi 09.02.2021 tarihinde Türk Patent ve Marka Kurumu tarafından tescillenmiş ve coğrafi işaret almıştır.


''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'YÖRE',
                    ),


                    SizedBox(width: 60,),

                    MyElevatedButton(
                      page:CustomSure(
                        text: '''

Normal tencerede mercimek pişmesi için 45 dk yeterlidir.

Sunumuna kadar geçen süre ise 1 saattir. 


Kaç dakikada pişti?''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'SÜRE',
                    ),
                  ],
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