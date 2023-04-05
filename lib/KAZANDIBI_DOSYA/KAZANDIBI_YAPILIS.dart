import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KazandibiYapilis extends StatefulWidget {

  @override
  _KazandibiYapilisState createState() => _KazandibiYapilisState();
}

class _KazandibiYapilisState extends State<KazandibiYapilis> {
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
              Text('1) Öncelikle orta boy bir tencereye bütün malzemeleri alarak karıştırıyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('2) Muhallebi elde ediyoruz. En son tereyağını ve vanilyasını dökerek muhallebimizi 5 dk. kadar pişiriyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('3) Orta boy alüminyum tepsiye bolca tereyağı sürüyoruz ve 3 yemek kaşığı kadar tepsiye şeker döküyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('4) Her yeri eşit olmasına özen gösterin.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('5) Sonra pişmiş muhallebiyi tepsiye döküyoruz ve orta ateşte sürekli olarak çevirerek muhallebiyi pişiriyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('6) 25-30 dk. yeterli burada önemli olan tepsiyi sürekli çevirerek kontrollü pişirmek kenar kısımların da pişmesine özen göstermek biraz dibi tutan muhallebinin kokusu biraz çıkar.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('7) O zaman hemen ocaktan alıyoruz ve soğumaya bırakıyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('8) Soğuduktan sonra 1-2 saat de buzdolabında bekletiyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('9) Sonra istediğimiz gibi dilimleyip servis yapabilirsiniz.', style: TextStyle(fontSize: 19)),
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