import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';

class firinda_tavuk_patates extends StatefulWidget {

  @override
  _firinda_tavuk_patatesState createState() => _firinda_tavuk_patatesState();
}

class _firinda_tavuk_patatesState extends State<firinda_tavuk_patates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('FIRINDA TAVUK'),
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
1 kilo tavuk (sarma)

4 – 5 adet patates

4 adet soğan

4 adet domates

4 adet yeşil biber

4 –  5 diş sarımsak

Yeteri kadar sıvı yağ

Tuz

Pul biber

Kekik''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'TARİF',
                    ),

                    SizedBox(width: 50,),

                    MyElevatedButton(
                      page:CustomYapilis(
                        text: '''

1) Öncelikle tavukları derin bir kaseye alarak üzerine tuz kekik pul biber ve biraz sıvı yağ gezdirelim iyice karıştıralım.

2) Daha sonra sırayla patatesimizi soyup ince ince dilimleyelim.

3) Soğanlarımızı halka halka doğrayalım.

4) Domates biber ve sarımsaklarımızı da doğrayıp hazırlayalım.

5) Pişireceğimiz tepsiye bütün bu hazırladığımız sebzelerimizi alarak üzerine sıvı yağ gezdirelim.

6) Tuz kekik ve pul biber atarak elimizle iyice karıştıralım.

7) Üzerine de baharatladığımız tavukları yerleştirelim.

8) 200 derecelik fırında kontrollü bir şekilde pişirelim.

Not: Malzemeleri istediğiniz gibi azaltıp çoğaltabilirsiniz. Kişi sayısına göre veya zevkinize göre ayarlayabilirsiniz.

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

1 Porsiyon (Orta) Fırında Patatesli Tavuk Baget 437,34 kaloridir.



''',
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'KALORİ',
                    ),

                    SizedBox(width: 40,),

                    MyElevatedButton(
                      page:CustomResim(
                        image: "assets/resimler/firinda_tavuk_patates.jpg",
                      ) ,
                      color: Colors.grey.shade700,
                      text: 'RESİM',
                    ),

                  ],
                ),

                SizedBox(height: 30,),

                MyElevatedButton(
                  page:CustomSure(
                    text: '''

Önceden ısıtılmış 200 derece fırında yaklaşık 40-50 dakika pişirilir.



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