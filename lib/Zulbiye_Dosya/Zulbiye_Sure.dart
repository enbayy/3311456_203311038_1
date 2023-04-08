import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class ZulbiyeSure extends StatefulWidget {

  @override
  _ZulbiyeSureState createState() => _ZulbiyeSureState();
}

class _ZulbiyeSureState extends State<ZulbiyeSure> {
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


            Text('Etler kendini bırakıp ve sulandıktan sonra tencereye 1 tatlı kaşığı sirke ve 2,5 su bardağı da sıcak su eklemesi yapın. Etleri yumuşayıp, suyunu çekip, hafiften yağına kalana kadar kapağı kapalı şekilde kısığa yakın orta ateşte 1-1,5 saat kadar pişirin.', style: TextStyle(fontSize: 24)),



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