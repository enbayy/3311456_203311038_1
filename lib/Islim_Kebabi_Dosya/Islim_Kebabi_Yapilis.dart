import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class IslimKebabiYapilis extends StatefulWidget {

  @override
  _IslimKebabiYapilisState createState() => _IslimKebabiYapilisState();
}

class _IslimKebabiYapilisState extends State<IslimKebabiYapilis> {
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

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[



            Text(' '),
            Text('1) Kabuklarını alacalı şekilde soyduğunuz patlıcanları keskin bir bıçak yardımıyla uzun ince şeritler halinde dilimleyin. Acısının çıkması için tuzlu suda bekletin.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('2) Orta yağlı dana kıymayı karıştırma kabına alın. Rendelenmiş kuru soğan, yumurta ve galeta unu, sarımsak, tuz, karabiber, pul biber ve kimyon katın.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('3) Köfte harcını özleşene kadar yaklaşık 10-15 dakika yoğurun.Köfte harcını altı cevizden biraz daha büyük parçalar ayırın.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('4) Avuç içinizde yuvarladığınız köfteleri,  tavada arkalı önlü ters çevirerek pişirin.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('5) Tuzlu suda dinlenen patlıcanların suyunu süzüp bol suda durulayın. Üzerlerini bir kağıt havlu yardımıyla kurulayın. Yağı kızdırdığınız tavada arkalı önlü ters çevirerek kızartın. Fazla yağını kağıt havlu yardımıyla alın.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('6) Sap kısımlarını aldığınız yeşil biberleri dört eşit parçaya bölün. Cherry domatesleri ikiye bölün.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('7) İki adet kızarmış patlıcan şeridini artı şeklini alacak şekilde servis tabağına yerleştirin. Orta kısmına bir adet kızarmış köfte koyup kapatın.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('8) Üzerine bir parça yeşil biber ve cherry domates yerleştirip kürdanla tutturun. Tüm köfteleri aynı şekilde patlıcan şeritlerine sardıktan sonra fırın tepsisine yerleştirin.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('9) Sosu için; zeytinyağını küçük bir sos tenceresinde kızdırın. Rendelenmiş domates ve  sarımsağı pişirin. Tuz ve karabiberini de ekledikten sonra 4-5 dakika kadar kaynatıp ocaktan alın.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('10) Hazırladığınız sosu patlıcanları aldığınız fırın tepsisine aktarın.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('11) İslim kebaplarını önceden ısıtılmış 180 derece fırında 30 dakika kadar pişirdikten sonra sıcak olarak servis edin.', style: TextStyle(fontSize: 20)),
            Text(' '),
            Text('AFİYET OLSUN!', style: TextStyle(fontSize: 21)),
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