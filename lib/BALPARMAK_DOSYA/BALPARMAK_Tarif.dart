import 'package:flutter/material.dart';
import 'package:izleme/BALPARMAK_DOSYA/BALPARMAK_YAPILIS.dart';
import 'package:izleme/anaekran.dart';


class BalparmakTarif extends StatefulWidget {

  @override
  _BalparmakTarifState createState() => _BalparmakTarifState();
}

class _BalparmakTarifState extends State<BalparmakTarif> {
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
              Text('Hamuru için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('Yarım paket margarin (125 gram)', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Yarım su bardağı sıvı yağ', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Yarım su bardağı toz şeker', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 yumurta', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 çay bardağı irmik', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 paket vanilya', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 çay kaşığı kabartma tozu', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('2-2,5 su bardağı kadar un', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Üzeri için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('1 çay bardağı irmik', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Şerbeti için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('2 su bardağı şeker', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('2,5 su bardağı su', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('3-4 damla limon suyu', style: TextStyle(fontSize: 24)),
              Text(' '),




              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BalparmakYapilis()));
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