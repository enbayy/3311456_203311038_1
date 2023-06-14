import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/components/custom_yore.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';

class Zulbiye extends StatefulWidget {

  @override
  _ZulbiyeState createState() => _ZulbiyeState();
}

class _ZulbiyeState extends State<Zulbiye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('ZÜLBİYE'),
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
400 gram dana kuşbaşı eti

400 gram arpacık soğan

10 diş sarımsak

1 yemek kaşığı tereyağı

1 yemek kaşığı sıvı yağ

1 yemek kaşığı domates salçası

1 çay kaşığı biber salçası

2 su bardağı haşlanmış nohut

1 çay kaşığı kimyon

1 tatlı kaşığı sirke

1 tatlı kaşığı tuz

1 çay kaşığı karabiber

1 çay kaşığı kırmızı biber''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'TARİF',
                ),

                SizedBox(width: 50,),

                MyElevatedButton(
                  page:CustomYapilis(
                    text: '''

1) Bir gece önceden nohutları ıslatın ve ertesi gün nohutları haşlayıp süzün.

2) Sonrasında tereyağını eriterek tarife başlayın.

3) Eriyen yağa etleri ekleyip, etlerin renkleri değişene ve suyunu salana kadar pişirin.

4) Ardından, tencereye 1 tatlı kaşığı sirke ve 2,5 su bardağı da sıcak su ekleyin.

5) Etleri yumuşayıp suyunu çekip, hafiften yağına kalana kadar kapağı kapalı şekilde kısık ateşte pişirin.

6) Sonrasında, tencereye yıkadığınız arpacık soğanları ve bütün sarımsakları soyarak, doğramadan ekleyin.

7) Arpacık soğanlar şeffaflaşana kadar tüm malzemeyi en küçük ocakta, 5 dakika kadar çevirin.

8) Tencereye salçaları ekleyin ve yine kavurmaya devam edin.

9) Sonra yemeğe haşlanmış nohutları ve baharatları ekleyin.

10) Yemeğin üzerin 2 parmak geçecek kadar sıcak su eklemesi yaparak, kısık ateşte pişirin.

11) Etler yumuşayınca yemeği ocaktan alıp, servis yapın.

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

Zülbiye yemeğinin 1 Porsiyonunda 507 kcal bulunmaktadır.


Besin değeri olarak:

41.24 gram karbonhidrat

0.49 gram protein

26.04 gram yağ

0.43 gram lif içermektedir.

''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'KALORİ',
                ),

                SizedBox(width: 40,),

                MyElevatedButton(
                  page:CustomResim(
                    image: "assets/resimler/Zulbiye.jpg",
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'RESİM',
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
                  page:CustomYore(
                    text: '''Zülbiye, Konya Akşehir yöremize ait yöresel bir yemektir. Yanına pilav ve ayran çok yakışacaktır. Acı pulbiber serpmeyi, sofranıza acı biber turşusu koymayı da unutmayın.''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'YÖRE',
                ),

                SizedBox(width: 60,),

                MyElevatedButton(
                  page:CustomSure(
                    text: '''

Etler kendini bırakıp ve sulandıktan sonra tencereye 1 tatlı kaşığı sirke ve 2,5 su bardağı da sıcak su eklemesi yapın. Etleri yumuşayıp, suyunu çekip, hafiften yağına kalana kadar kapağı kapalı şekilde kısığa yakın orta ateşte 1-1,5 saat kadar pişirin.



Kaç dakikada pişti?''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'SÜRE',
                ),

              ],),

                SizedBox(height: 30,),


                ElevatedButton(
                  child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 29)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
          ],
        ),
    ],
      ),
    ),
    );
  }
}