import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class DilberDudagiYapilis extends StatefulWidget {

  @override
  _DilberDudagiYapilisState createState() => _DilberDudagiYapilisState();
}

class _DilberDudagiYapilisState extends State<DilberDudagiYapilis> {
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


            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[


              Text(' '),
              Text('1) Dilber dudağı tatlısı hamuru için olan malzemeler yoğurma kabına alınarak hamur yoğrulur.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('2) Yumuşak bir hamur elde edilir. Hamur 24 eşit parçaya ayrılarak elle yuvarlatılır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('3) Hazırlanan bezeler bir tepsiye dizilir.                   ', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('4) Üzerine temiz bir bez örtülerek 1 saat kadar dinlendirilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('5) Daha sonra her beze sıra ile nişasta serpilerek 12-15 cm kadar çapında açılır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('6) Sıra ile aralarına nişasta serpilerek 12 kat üst üste dizilir. (Diğer 12  tanesi sonra hazırlanır.)', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('7) Daha sonra 12 kat yufka merdane ile yavaşça yaklaşık 4 mm. kalınlığında açılır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('8) Hamur yumuşak olduğu için kolaylıkla açılır endişe etmeyin.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('9) Bir çay bardağı veya kurabiye kesme kalıbı ile daire şeklinde kesilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('10) Keserken mümkün olduğunca birbirine yakın yaparak aralarda boşluk bırakmamaya özen gösterilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('11) Her dairenin ortasına bir kaç parçaya kırılmış ceviz içi yerleştirilerek ay şeklinde kapatılır. (Hamurun tam kapanması için bastırmanıza gerek yok, sadece kapatılması yeterli. Cevizi ise dövülmüş kullanmanızı önermem çünkü şerbetlendiğinde dövülmüş ceviz içinden akabilir.)', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('12) Hazırlanan tatlılar fırın tepsisine dizilir. Kendisi yağlı bir hamur olduğu için tepsinizin yağlanmasına gerek yok.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('13) Tatlıların arasında çok fazla boşluk bırakılmasına da gerek yok, neredeyse birbirine değecek gibi sıkı bir şekilde dizilirse bu ölçü ile bir fırın tepsisi dolusu tatlı elde edilebilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('14) Bir tavada tereyağı eritilir, parlaklık vermesi için dilenirse 1-2 yemek kaşığı zeytinyağı da eklenebilir. Fırça ile tüm tatlıların üzeri bolca yağlanır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('15) 190 derece ısıtılmış fırında üzerleri güzelce kızarana kadar pişirilir. Hızlı piştiği için kontrollü olmanızda fayda var.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('16) Fırından çıkan tatlılar uygun bir borcama alınır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('17) Önceden hazırlanın ılıtılan şerbet tatlının üzerine gezdirilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('18) Birkaç saat şerbetini çekmesi için bekletildikten sonra isteğe göre Hindistan cevizi veya toz fıstıkla süslenerek servis edilir.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('19) Dilber dudağı tatlısının şerbeti için su ve şeker karıştırılıp kaynatılır. 5 dakika kadar kaynadıktan sonra limon suyu eklenerek  20 dakika daha kaynatıp ocaktan alınır.', style: TextStyle(fontSize: 19)),
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