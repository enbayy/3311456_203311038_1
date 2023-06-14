import 'package:flutter/material.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/components/custom_kalori.dart';
import 'package:izleme/components/custom_resim.dart';
import 'package:izleme/components/custom_sure.dart';
import 'package:izleme/components/custom_tarif.dart';
import 'package:izleme/components/custom_yapilis.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';

class Kazandibi extends StatefulWidget {

  @override
  _KazandibiState createState() => _KazandibiState();
}

class _KazandibiState extends State<Kazandibi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('KAZANDİBİ'),
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
6 su bardağı süt

2 yemek kaşığı nişasta

1 su bardağı un

1 su bardağı şeker

1 yemek kaşığı tereyağı

1 paket vanilya''',
              ) ,
              color: Colors.grey.shade700,
              text: 'TARİF',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomYapilis(
                text: '''

1) Öncelikle orta boy bir tencereye bütün malzemeleri alarak karıştırıyoruz.

2) Muhallebi elde ediyoruz. En son tereyağını ve vanilyasını dökerek muhallebimizi 5 dk. kadar pişiriyoruz.

3) Orta boy alüminyum tepsiye bolca tereyağı sürüyoruz ve 3 yemek kaşığı kadar tepsiye şeker döküyoruz.

4) Her yeri eşit olmasına özen gösterin.

5) Sonra pişmiş muhallebiyi tepsiye döküyoruz ve orta ateşte sürekli olarak çevirerek muhallebiyi pişiriyoruz.

6) 25-30 dk. yeterli burada önemli olan tepsiyi sürekli çevirerek kontrollü pişirmek kenar kısımların da pişmesine özen göstermek biraz dibi tutan muhallebinin kokusu biraz çıkar.

7) O zaman hemen ocaktan alıyoruz ve soğumaya bırakıyoruz.

8) Soğuduktan sonra 1-2 saat de buzdolabında bekletiyoruz.

9) Sonra istediğimiz gibi dilimleyip servis yapabilirsiniz.

AFİYET OLSUN!''',
              ) ,
              color: Colors.grey.shade700,
              text: 'YAPILIŞ',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomKalori(
                text: '''
                
1 Porsiyon (Orta) Pudra Şekerli Kazandibi 300,98 kaloridir.

Besin değeri olarak:

48,99 Karbonhidrat(g)

7,14 Protein(g)

6,31 yağ(g)

0,48 lif(g)

157,80 Sodyum(mg)

279,83 potasyum(mg)

214,74 Kalsiyum(mg)

76,12 A Vitamini(ui)

1,77 C Vitamini(mg)''',
              ) ,
              color: Colors.grey.shade700,
              text: 'KALORİ',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomResim(
                image: "assets/resimler/kazandibi.jpg",
              ) ,
              color: Colors.grey.shade700,
              text: 'RESİM',
            ),

            SizedBox(height: 10,),

            MyElevatedButton(
              page:CustomSure(
                text: '''
Önceden ısıtılmış 200 derece fırında 20-30 dakika kadar tabandaki pudra şekerinin iyice eriyip kahverengleşmesini sağlıyoruz.



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