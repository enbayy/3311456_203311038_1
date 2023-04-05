import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class HashasliRevaniYapilis extends StatefulWidget {

  @override
  _HashasliRevaniYapilisState createState() => _HashasliRevaniYapilisState();
}

class _HashasliRevaniYapilisState extends State<HashasliRevaniYapilis> {
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
              Text('1) Yumurta ve şekeri köpük köpük olana kadar çırpın.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('2) Ardından süt ve sıvı yağı ilave edin ve karıştırın.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('3) Sonra irmik, un ve haşhaşı ekleyin.                  ', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('4) Karıştırdıktan sonra kabartma tozu ve vanilyayı ekleyerek iyice çırpın ve yağlanmış tepsiye dökün.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('5) Önceden ısıtılmış 170 derece fırında pişirin. ', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('6) Şerbeti için şeker ve suyu kaynatın.                ', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('7) 1-2 dk kaynadıktan sonra altını kapatın.         ', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('8) Altını kapattıktan sonra ilk sıcaklığın geçmesini bekleyin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('9) Daha sonra soğumuş olan kekin üzerine şerbeti dökün.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('10) En son olarak üzerine krema veya krem şanti sürün.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('11) Krem şanti için süt ve toz şanti iyice çırpılır ve buzdolabında 15-20 dk beklettikten sonra kekin üzerine sürülür.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('12) Krema sürdükten sonra üzerine haşhaş serpip servis yapın.', style: TextStyle(fontSize: 20)),
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