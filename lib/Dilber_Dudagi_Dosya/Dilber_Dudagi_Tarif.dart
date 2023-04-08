import 'package:flutter/material.dart';
import 'package:izleme/Dilber_Dudagi_Dosya/Dilber_Dudagi_Yapilis.dart';
import 'package:izleme/anaekran.dart';


class DilberDudagiTarif extends StatefulWidget {

  @override
  _DilberDudagiTarifState createState() => _DilberDudagiTarifState();
}

class _DilberDudagiTarifState extends State<DilberDudagiTarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MALZEMELER'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[



              Text(' '),
              Text('1 su bardağı yoğurt', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 su bardağı sıvı yağ', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('2 adet yumurta', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 yemek kaşığı sirke', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Yarım paket kabartma tozu', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 silme çay kaşığı tuz', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('4,5 (5’e yakın) su bardağı un', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Açmak için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('Mısır nişastası', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Arasına:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('İri kırılmış ceviz', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Üzerine sürmek için;', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('100 gram tereyağı', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Şerbeti için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('3,5 su bardağı şeker', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('3,5 su bardağı su', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 yemek kaşığı limon suyu', style: TextStyle(fontSize: 24)),
              Text(' '),




              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DilberDudagiYapilis()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(Icons.add, size: 30, color: Colors.black),
                label: Text('YAPILIŞ', style: TextStyle(fontSize: 20, color: Colors.black)),
              ),



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