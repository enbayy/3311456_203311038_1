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


class Ayva_tatlisi extends StatefulWidget {

  @override
  _Ayva_tatlisiState createState() => _Ayva_tatlisiState();
}

class _Ayva_tatlisiState extends State<Ayva_tatlisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('AYVA TATLISI'),
      ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[

              ListBody(

                children: [

              MyElevatedButton(

                page:CustomTarif(
                  text: '''3 adet ayva
                  
3’er yemek kaşığı toz şeker

1 adet çubuk tarçın 

10-12 adet karanfil

Yarım su bardağı su

Ayvaların kararmaması için: 

1 adet limon

1 lt kadar su 

Servis için:  

Kaymak

File antep fıstığı''',
                ) ,
                color: Colors.grey.shade700,
                text: 'TARİF',
              ),


              SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomYapilis(
                      text: '''
                      
1) Ayva tatlısı hazırlamak için ilk olarak derince bir kaba su doldurun ve içerisine limonu sıkın.

2) Ayvaları ikiye bölerek çekirdeklerin bulunduğu kısmı çıkartın ve ayvanın kabuğunu soyun.

3) Bu aşamada çıkarttığınız çekirdekleri ayrı bir yerde biriktirin, pişirme esnasında tatlımıza renk vermesi için kullanacağız.

4) Hazırlamış olduğunuz ayvaları limon suda bekletin, ayvaların kararmaması için bu önemli.

5) Tüm ayvalar için aynı işlemi yaptıktan sonra pişirme kabınıza ayvaların orta kısımları üstte kalacak şekilde yerleştirin.

6) Tarçın çubuğunuzu, karanfilleri ve ayva çekirdeklerinin tamamını tencereye ekleyin.

7) Ayvaların her birinin üzerine bir kahve fincanı toz şekeri dökün.

8) Suyu da tencereye ekledikten sonra tencerenin kapağını kapatarak su kaynayana kadar orta ateşte, kaynadıktan sonra da en küçük ocağınızda kısık ateşte 1-1,5 saat kadar pişirin.

9) Ayvalar rengini aldıktan ve yumuşadıktan sonra ocaktan alabilirsiniz.

10) Tatlıları servis kabınıza alın ve 3-4 saat kadar soğuması için bekletin.

11) Servis ederken kalan şerbetinden ayvaların üzerine gezdirmeyi unutmayın.

12)Kaymak ve Antep fıstığı ile süsledim siz tercihlerinize göre süsleyebilirsiniz.

Not: Ayva tatlısı pişene kadar tencerenin kapağını kapalı tutun.

AFİYET OLSUN!''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'YAPILIŞ',
                  ),

              SizedBox(height: 10,),

                  MyElevatedButton(
                    page:CustomKalori(
                      text: '''Ayva tatlısının 100 gramında 170 kalori bulunmaktadır.
                  
Ayva tatlısının 1 porsiyonu (250 gr) 426 kaloridir.''',
                    ) ,
                    color: Colors.grey.shade700,
                    text: 'KALORİ',
                  ),

              SizedBox(height: 10,),

              MyElevatedButton(
                page:CustomResim(
                  image: "assets/resimler/ayva_tatlisi.jpg",
                ) ,
                color: Colors.grey.shade700,
                text: 'RESİM',
              ),

              SizedBox(height: 10,),

              MyElevatedButton(
                page:CustomYore(
                  text: '''Osmanlı'nın ilk başkenti olan Bursa, Osmanlı Saray Mutfağı'nın etkisinde kalmıştır. Ayva tatlısı Bursa'da yaygın olarak pişirilen meyveli tatlılar arasındadır.''',
                ) ,
                color: Colors.grey.shade700,
                text: 'YÖRE',
              ),

              SizedBox(height: 10,),

              MyElevatedButton(
                page:CustomSure(
                  text: '''Suyu da tencereye ekledikten sonra tencerenin kapağını kapatarak su kaynayana kadar orta ateşte, kaynadıktan sonra da en küçük ocağınızda kısık ateşte 1-1,5 saat kadar pişirin.

Ayvalar rengini aldıktan ve yumuşadıktan sonra ocaktan alabilirsiniz. Tatlıları servis kabınıza alın ve 3-4 saat kadar soğuması için bekletin.


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