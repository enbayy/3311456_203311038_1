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


class Piyaz extends StatefulWidget {

  @override
  _PiyazState createState() => _PiyazState();
}

class _PiyazState extends State<Piyaz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('PİYAZ'),
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
2 su bardağı haşlanmış kuru fasulye

2 yemek kaşığı hakiki zeytinyağı

2 adet domates

1 adet kuru soğan

1 tepeleme tatlı kaşığı sumak

1 dolu çay kaşığı tuz

Yarım limonun suyu

Kıyılmış maydanoz''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİF',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYapilis(
                        text: '''
1) Soğan yarım ay şeklinde ince dilimlenir.

2) Domates orta irilikte küpler halinde doğranır.

3) Hazırlananlar salata kasesine teker teker konulur.

4) Haşlanıp süzülmüş fasulye, kıyılmış maydanoz eklenip tuzu, sumak ekşisi, limon suyu ve yağı da eklendikten sonra kaşıkla harmanlanır.

5) Bol ekşili seven içine 1 yemek kaşığı hakiki nar ekşisi kullanabilir. Zeytinyağı tercih etmeyen sıvı yağ kullanabilir.

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


1 Porsiyon (Orta) Kuru Fasulye Piyazı 162,33 kaloridir.




''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'KALORİ',
                    ),

                    SizedBox(width: 40,),

                    MyElevatedButton(
                      page:CustomResim(
                        image: "assets/resimler/piyaz.jpg",
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
Antalya usulü piyaz, yaklaşık yüz yıla yakın geçmişi ile il sınırlarını aşan bir üne sahip olmuştur. 
                                              
Antalya'da geliştirilen ve ünlenen piyaz, yapım tekniği ile kente uğrayan yerli ve yabancı misafirlerin tadına bakmadan gitmediği bir yöresel ürün haline gelmiştir.

Antalya piyazı, tarator soslu bir fasulye yemeğidir.

''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'YÖRE',
                    ),


                    SizedBox(width: 70,),

                    MyElevatedButton(
                      page:CustomSure(
                        text: '''

Ertesi gün fasulyenin suyunu süzün, yıkayın ve tencereye alarak üzerini iki parmak geçene kadar su koyun ve haşlamaya bırakın. 

Çok yumuşak olup dağılmaması için kontrollü olarak 35-40 dakika pişirin. 

Haşlanan fasulyeleri süzün, soğuduktan sonra derin bir kaba alın.


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