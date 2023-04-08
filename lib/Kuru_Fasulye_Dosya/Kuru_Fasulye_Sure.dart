import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KuruFasulyeSure extends StatefulWidget {

  @override
  _KuruFasulyeSureState createState() => _KuruFasulyeSureState();
}

class _KuruFasulyeSureState extends State<KuruFasulyeSure> {
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


            Text('Düdüklü tencere basınçla çalışan bir pişirici olması sayesinde yemeklerin kısa sürede pişirilmesini sağlar. Böylece hem zamandan hem de paradan tasarruf edilir. ', style: TextStyle(fontSize: 24)),
            Text('Düdüklü tencerede kuru fasulyenin pişmesi ise ortalama 25-30 dakika sürer. Normal tencerede pişme süresi ise 1 saati bulabilir.', style: TextStyle(fontSize: 24)),



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