import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class YaprakSarmasiSure extends StatefulWidget {

  @override
  _YaprakSarmasiSureState createState() => _YaprakSarmasiSureState();
}

class _YaprakSarmasiSureState extends State<YaprakSarmasiSure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('SÜRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[

            Text(' '),
            Text('Pişme esnasında açılmamaları için; üzerlerine düz bir servis tabağı kapatın. 1,5 su bardağı sıcak su ve 2 yemek kaşığı zeytinyağını da tencereye ekledikten sonra sarmaları, kısık ateşte yaklaşık 35 dakika pişirin.', style: TextStyle(fontSize: 24)),
            Text(' '),
            Text('Arzuya göre; ılık ya da soğuk olarak servis edin.', style: TextStyle(fontSize: 24)),
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
    );
  }
}