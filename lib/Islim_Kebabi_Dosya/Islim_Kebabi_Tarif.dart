import 'package:flutter/material.dart';
import 'package:izleme/Islim_Kebabi_Dosya/Islim_Kebabi_Yapilis.dart';
import 'package:izleme/anaekran.dart';


class IslimKebabiTarif extends StatefulWidget {

  @override
  _IslimKebabiTarifState createState() => _IslimKebabiTarifState();
}

class _IslimKebabiTarifState extends State<IslimKebabiTarif> {
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
            Text('4 adet orta boy patlıcan', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('3 yemek kaşığı zeytinyağı', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('2 adet orta boy domates', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('2 adet orta boy yeşil biber', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Köftesi için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('500 gram orta yağlı kıyma', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 adet kuru soğan (rendelenmiş)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('4 yemek kaşığı galeta unu', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('2 diş sarımsak (ezilmiş)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 adet yumurta', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı tuz', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı pul biber', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı kimyon', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı karabiber', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Sosu için:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(' '),
            Text('2 yemek kaşığı zeytinyağı', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('2 adet domates (rendelenmiş)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 diş sarımsak (ezilmiş)', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Yarım su bardağı sıcak su', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Yarım çay kaşığı tuz', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('1 çay kaşığı karabiber', style: TextStyle(fontSize: 24)),
            Text(' '),





            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => IslimKebabiYapilis()));
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