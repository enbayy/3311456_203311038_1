import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class BalparmakYapilis extends StatefulWidget {

  @override
  _BalparmakYapilisState createState() => _BalparmakYapilisState();
}

class _BalparmakYapilisState extends State<BalparmakYapilis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
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
              Text('1) Öncelikle şerbetini hazırlayalım, ılık olması gerekiyor.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('2) Şekeri ve suyu tencereye alıp şeker eriyene kadar karıştırarak pişirilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('3) Şeker eridikten sonra karıştırmadan pişmeye bırakılır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('4) Kaynamaya başlayınca kısık ateşte 10 dk. daha pişirilir ve ocaktan alıp soğumaya bırakılır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('5) Karıştırma kabına bir yumurta kırılır, şeker eklenir ve çırpma teli ile çırpılır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('6) Üzerine sıvı yağ, irmik, margarin, vanilya, kabartma tozu eklenir ve karıştırmaya devam edilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('7) Azar azar un ilavesi yaparak yoğrulur. Kulak memesi kıvamında yumuşak bir hamur elde edilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('8) Hazırlanılan hamurdan ceviz büyüklüğünde parçalar kopartılıp avuç içinde yuvarlanarak parmak şekli verilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('9) İrmiğe bulanıp yağlı kağıt serilmiş fırın tepsisine dizilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('10) Önceden ısıtılmış 180 derece fırında 25-30 dk. pişirilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('11) Hazırlanılan ılımış olan şerbet sıcak tatlının üzerine dökülür.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('12) 1 saat kadar dinlendirilir şerbetini çektikten sonra servis yapabiliriz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('AFİYET OLSUN!', style: TextStyle(fontSize: 20)),
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