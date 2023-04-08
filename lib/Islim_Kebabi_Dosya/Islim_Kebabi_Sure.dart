import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class IslimKebabiSure extends StatefulWidget {

  @override
  _IslimKebabiSureState createState() => _IslimKebabiSureState();
}

class _IslimKebabiSureState extends State<IslimKebabiSure> {
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
            Text('Patlıcanlar artı şeklinde serilip ortasına köfte konulur ve kapatılır üzerine domates ve biber konularak kürdanla sıkı durması sağlanır. Daha sonra salçalı su üzerlerine dökülüp üzeri yanmayacak şekilde 20 dk pişirilir.', style: TextStyle(fontSize: 24)),



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