import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class ZulbiyeYore extends StatefulWidget {

  @override
  _ZulbiyeYoreState createState() => _ZulbiyeYoreState();
}

class _ZulbiyeYoreState extends State<ZulbiyeYore> {
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

            Text("Zülbiye, Konya Akşehir yöremize ait yöresel bir yemektir. Yanına pilav ve ayran çok yakışacaktır. Acı pulbiber serpmeyi, sofranıza acı biber turşusu koymayı da unutmayın.", style: TextStyle(fontSize: 24)),



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