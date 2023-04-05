import 'package:flutter/material.dart';
import 'package:izleme/ZEYTINYAGLI_YAPRAK_SARMASI_DOSYA/ZEYTINYAGLI_YAPRAK_SARMASI_YAPILIS.dart';
import 'package:izleme/anaekran.dart';


class YaprakSarmasiTarif extends StatefulWidget {

  @override
  _YaprakSarmasiTarifState createState() => _YaprakSarmasiTarifState();
}

class _YaprakSarmasiTarifState extends State<YaprakSarmasiTarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
              Text('400 g salamura yaprak', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1,5 su bardağı pirinç', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 adet büyük boy soğan', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 yemek kaşığı domates salçası', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 yemek kaşığı dolmalık fıstık (opsiyonel)', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 yemek kaşığı kuş üzümü (opsiyonel)', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1/4 çay bardağı zeytinyağ', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Karabiber', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('Tuz', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1 tatlı kaşığı kuru nane', style: TextStyle(fontSize: 24)),
              Text(' '),
              Text('1,5 su bardağı sıcak su', style: TextStyle(fontSize: 24)),
              Text(' '),



              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => YaprakSarmasiYapilis()));
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