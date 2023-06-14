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


class Kuru_fasulye extends StatefulWidget {

  @override
  _Kuru_fasulyeState createState() => _Kuru_fasulyeState();
}

class _Kuru_fasulyeState extends State<Kuru_fasulye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('KURU FASULYE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            ListBody(
              children: [

                Row(
        children: [
          SizedBox(
            width: 60,
          ),

                MyElevatedButton(
                  page:CustomTarif(
                    text: '''
2 su bardağı kuru fasulye

300 gr dana kuşbaşı et

1 adet kuru soğan

1 tane sivri biber

1 yemek kaşığı domates salçası

1 tatlı kaşığı acı biber salçası

Tuz

4, 5 -5 bardak sıcak su

Çok az sıvı yağ

1 tane küp şeker''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'TARİF',
                ),

                SizedBox(width: 50),

                MyElevatedButton(
                  page:CustomYapilis(
                    text: '''

1) 4 yemek kaşığı sıvı yağ ve 2 yemek kaşığı tereyağını derin bir tencereye aktarın ve kızdırın.

2) 1 adet yemeklik doğranmış kuru soğanı da ekleyin ve pembeleşinceye kadar kavurun.

3) Soğanlar kavrulduktan sonra 1 yemek kaşığı domates salçasını ekleyin ve kokusu çıkana kadar kavurun.

4) Son olarak bir gece önceden suda beklettiğiniz kuru fasulyeleri de tencereye ekleyin.

5) Sonra 1-2 dakika karıştırın ve 3 su bardağı su, 1 çay kaşığı kırmızı toz biber, 1 çay kaşığı tuz ve 1 çay kaşığı toz şekeri ekleyin, kapağını kapatıp fasulyeler yumuşayana kadar pişirin.

6) Tane tane pişmiş pirinç pilavı ile servis edin.

AFİYET OLSUN!''',
                  ) ,
                  text: 'YAPILIŞ',
                  color: Colors.grey.shade700,
                ),

                ],
                ),

                SizedBox(height: 30),

                Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),

                MyElevatedButton(
                  page:CustomKalori(
                    text: '''

1 çay bardağı dolusu kuru fasulye 114 kalori.

1 su bardağı dolusu kuru fasulye 227 kalori.

Küçük porsiyon kuru fasulye 185 kalori.

Orta boy porsiyon kuru fasulye 256 kalori.''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'KALORİ',
                ),

                SizedBox(width: 40),

                MyElevatedButton(
                  page:CustomTarihce(
                    text: '''

Avrupalı komşularıyla karşılaştırıldığında Türkiye, Amerika’dan Avrupa’ya getirilen fasulye ile tanışmakta biraz geç kaldı. Avrupalılar, 16. yüzyılda yemeklerinde fasulyeyi kullanmaya başlamışlardı. Anadolu’ya ise farklı ticaret yollarıyla getirildi. 18. yüzyıl itibariyle fasulye, saray mutfağı ve askerlerin kantinleri de dahil olmak üzere Türk mutfağına giriş yaptı. 1744 yılında Londra’dan gelen bazı gezginler notlarında kuru fasulyeyi, “azıcık ete korkunç miktarda sebze”olarak tarif edip şikâyet etmişlerdir.

Fasulyeye kıymanın eklenmesi Osmanlı mutfağındaki ete olan sevginin bir sonucu olarak görülebilir.

Kuru fasulyenin Türk ordusunda askerlere servis edilmesi 19. yüzyılda bir İngiliz subayının dikkatini çekmiştir. Gözlemlediğine göre, Avrupalı hiçbir asker, Türk askerler kadar bol miktarda yemez. Türk askerler yemeklerini bakır tencerelerde en az yakıt harcayacak şekilde düşük ısıda pişirirlerdi. Bu yavaş pişirme tekniği fasulyenin tadının daha çok ortaya çıkmasını sağlardı.''',
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'TARİHÇE',
                ),

                ],
                ),

                SizedBox(height: 30,),

                Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),

                MyElevatedButton(
                  page:CustomResim(
                    image: "assets/resimler/kuru_fasulye.jpg",
                  ) ,
                  color: Colors.grey.shade700,
                  text: 'RESİM',
                ),

                SizedBox(width: 50,),

                MyElevatedButton(
                  page:CustomYore(
                    text: '''

Rize Çayeli Kuru Fasulye Yemeği 02.01.2018 tarihinde Türk Patent ve Marka Kurumu tarafından tescillenmiş ve coğrafi işaret almıştır.

Yörelere Göre Çeşitleri:

Karaman Etli Kuru Fasulye Yemeği

Nevşehir Tandır Fasulyesi

Ordu Akkuş Şeker Fasulyesi Yemeği

Ordu Akkuş Şeker Fasulyesi Yemeği''',
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

Düdüklü tencere basınçla çalışan bir pişirici olması sayesinde yemeklerin kısa sürede pişirilmesini sağlar. Böylece hem zamandan hem de paradan tasarruf edilir.

Düdüklü tencerede kuru fasulyenin pişmesi ise ortalama 25-30 dakika sürer. Normal tencerede pişme süresi ise 1 saati bulabilir.



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