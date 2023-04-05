import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class GullacYapilis extends StatefulWidget {

  @override
  _GullacYapilisState createState() => _GullacYapilisState();
}

class _GullacYapilisState extends State<GullacYapilis> {
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
              Text('1) Güllaç tatlısını yapmak için; öncelikle süt ve şekeri tencereye alarak ısıtıyoruz, şekerler tamamen erisin. Bu aşamada sütü çok fazla ısıtmanıza gerek yok, şekerin erimesi yeterli olacaktır.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('2) Daha sonra sütü oda sıcaklığında ılınmaya bırakıyoruz. Eğer el yakmayacak şekilde ısıttıysanız tekrar ılıması için beklemenize gerek olmayacaktır. Süt kaynar olursa tatlınız hamur olur o nedenle el yakmayacak şekilde olmalı.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('3) Güllaç yaprağının parlak kısmı üste gelecek şekilde ilkini derince bir tepsiye koyuyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('4) Üzerine her yanı ıslanacak şekilde bir iki kepçe süt döküyoruz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('5) Altı güllaç yaprağı için aynı işlemi tekrarlayalım ve 6. katı da ıslattıktan sonra bu kata ceviz serpelim ve üzerine diğer güllaç yapraklarını aynı şekilde ıslatarak serelim.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('6) Kalan şekerli sütün içerisine 2 yemek kaşığı gül suyu ekleyip tatlının üzerine gezdirelim. Burada kullandığınız gül suyunun kozmetik ürünü olmamasına dikkat etmelisiniz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('7) Hazırladığımız tatlımızı 2 saat kadar buzdolabında muhafaza edelim.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('8) En az 2-3 saat dinlendirdikten sonra üzerini isteğe göre süsleyerek servis edebilirsiniz. Ben toz antep fıstığı ve kiraz şekerlemeleri ile süsledim.', style: TextStyle(fontSize: 19)),
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