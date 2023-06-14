import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';

class Vegan_Pizza extends StatefulWidget {

  @override
  _Vegan_PizzaState createState() => _Vegan_PizzaState();
}

class _Vegan_PizzaState extends State<Vegan_Pizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('PİZZA'),
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
2 su bardağı çiğ karabuğday unu

1 su bardağı ılık su

4 çorba kaşığı zeytinyağı

1 çorba kaşığı karnıyarık otu tozu

1 çorba kaşığı hindistan cevizi şekeri

2 çay kaşığı kaya tuzu

Üst malzemeleri:

1 tatlı kaşığı acı biber salçası

Çay kaşığının ucuyla sarımsak tozu

Kenarları ve üstü için besin mayası

1 su bardağı kadar vegan mozzarella peynir rendesi

Doğranmış kuru domates ve yeşil zeytin

Karabiber, kimyon, bol kekik

Tere ya da roka''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİF',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYapilis(
                        text: '''
                        
1) Hamurun malzemeleriyle ele yapışmayan bir hamur hazırlayın. Kulak memesi kıvamında olmalı diyebilirim.

2) Hazır olan hamuru oklavayla pizza ebadında açın kenarlarına besin mayası koyup kıvırın, siz isterseniz rende kaşar peyniri koyabilirsiniz.

3) Üzerine sürmek için bir tatlı kaşığı acı biber salçasını azıcık suyla beraber açın ve içine çay kaşığı ucuyla sarımsak tozu ve bol kekik koyup karıştırın.

4) Sonra kaşığın tersiyle iki pizzanın ortasına sürün. Taze peynir tüketmemek artık bir sorun değil, çünkü vegan ve glutensiz nefis bir mozzarella peynir yapılmış.

5) Salçanın üzerine de bol bol bu peyniri rendeleyin. Sonra da üzerine diğer malzemeleri (roka hariç) yerleştirip baharatları serpiştirin.

6) Üzerine yine bir miktar daha mozzarella rendeleyin. En son da biraz zeytinyağ gezdirebilirsiniz. 180 derece fırında yaklaşık 30 dakikada pişiyor.

7) Pizza piştikten sonra üstüne tere ya da roka koyarak afiyetle tüketin.
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

100 gram Vegan Pizza, ortalama 450,08 kaloridir.

Besin değeri olarak:

77,06 karbonhidrat

2,41 protein

14,23 yağ

''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'KALORİ',
                    ),

                    SizedBox(width: 40,),

                    MyElevatedButton(
                      page:CustomResim(
                        image: "assets/resimler/vegan_pizza.jpg",
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'RESİM',
                    ),

                  ],
                ),

                SizedBox(height: 30),

                    MyElevatedButton(
                      page:CustomSure(
                        text: '''

Hamurları tepsiye alıp çatalla üzerlerini delin. 5 dakika kadar 200 derece fırında renk almayacak şekilde sadece hamurları pişirin. 

Fırından çıkarıp sosunu sürün ve malzemeleri dizin. Tekrar 200 derecede fırına verip 15-20 dakika pişirin.


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