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


class Pamuk_pogaca extends StatefulWidget {

  @override
  _Pamuk_pogacaState createState() => _Pamuk_pogacaState();
}

class _Pamuk_pogacaState extends State<Pamuk_pogaca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('PAMUK POĞAÇA'),
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
1 su  bardağı sıcak süt
                  
1 şişe soda

1 yemek kaşığı şeker

1 paket maya

Yarım su bardağı sıvı yağ

2 yumurta beyazı

1 tatlı kaşığı tuz

2 yemek kaşığı yumuşak tereyağ

6 - 6,5 su bardağı un

2 yumurta sarısı ise üzerine''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'TARİF',
                  ),


                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''                      
1) Süt, soda, şeker, maya, sıvı yağ, yumurta beyazı, tereyağ ve un karıştırılıp yoğurulur.

2) Yarım saat kadar mayalanmasını bekliyoruz.

3) Ardından şekil verip yağlı kağıdın üzerine tepsiye diziyoruz.

4) Tepsiye dizdikten sonra bir süre daha bekleyip üzerine yumurta sarısı sürüyoruz.

5) İsteğe bağlı susam atılır.

6) 180 - 200 derecede fırında yarım saat pişirilir.

AFİYET OLSUN!
''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''Poğaçanın 100 gramında 347 kalori bulunmaktadır.
                      
                      
                  
1 adet (70 gr) poğaça 243 kaloridir.


''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomResim(
                      image: "assets/resimler/pamuk_pogaca.JPG",
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'RESİM',
                  ),

                  SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomSure(
                      text: '''180 - 200 derecede 30 dk pişirilir.
                      
                      


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