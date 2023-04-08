import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class YaprakSarmasiYapilis extends StatefulWidget {

  @override
  _YaprakSarmasiYapilisState createState() => _YaprakSarmasiYapilisState();
}

class _YaprakSarmasiYapilisState extends State<YaprakSarmasiYapilis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YAPILIŞ'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[


              Text(' '),
              Text('1) Yaprakları güzelce yıkayıp suya koyun ve tuzunu almak için 1-2 saat suda bekletin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('2) İç harcı için yağı kızdırıp çok minik doğradığınız soğanı ekleyin ve yumuşayana kadar kavurun.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('3) Salçayı ekleyip kokusu çıkana kadar kavurun.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('4) Yıkayıp süzdüğünüz pirinci ekleyip karıştırın.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('5) Kuş üzümü, fıstık, nane, karabiber ve tuzunu ekleyip karıştırın.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('6) 1,5 su bardağı sıcak su ekleyip karıştırın ve suyunu çekene kadar pişirin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('7) Tencerenin altına bir sıra boş yaprak dizin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('8) Her bir yaprağın içine uzunlamasına 1 çay kaşığı iç koyup önce yanlarından ortaya katlayın ve ardından rulo şeklinde sarın ve tencereye dizin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('9) Yaprakların en üstünü de bir sıra boş yaprakla kapatın.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('10) Üzerine zeytinyağ ve limon suyu gezdirip limon dilimleri koyun ve üzerine bir tabak kapatın.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('11) Üzerini geçecek kadar sıcak su koyup kısık ateşte yapraklar ve pirinçler iyice yumuşayana kadar pişirin', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('AFİYET OLSUN!', style: TextStyle(fontSize: 22)),
              Text(' '),



              ElevatedButton(
                child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),




            ],
          ),
        ),
      ),
    );
  }
}