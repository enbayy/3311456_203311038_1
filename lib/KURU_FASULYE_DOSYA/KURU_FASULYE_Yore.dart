import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KuruFasulyeYore extends StatefulWidget {

  @override
  _KuruFasulyeYoreState createState() => _KuruFasulyeYoreState();
}

class _KuruFasulyeYoreState extends State<KuruFasulyeYore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YÖRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Text('Rize Çayeli Kuru Fasulye Yemeği 02.01.2018 tarihinde Türk Patent ve Marka Kurumu tarafından tescillenmiş ve coğrafi işaret almıştır.', style: TextStyle(fontSize: 21)),
            Text('Yörelere Göre Çeşitleri:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            Text('Karaman Etli Kuru Fasulye Yemeği', style: TextStyle(fontSize: 24)),
            Text('Nevşehir Tandır Fasulyesi', style: TextStyle(fontSize: 24)),
            Text('Ordu Akkuş Şeker Fasulyesi Yemeği', style: TextStyle(fontSize: 24)),
            Text('Denizli Etli Kuru Fasulye', style: TextStyle(fontSize: 24)),

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