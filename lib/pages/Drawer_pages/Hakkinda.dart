import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/constant/custom_animation_button.dart';


class Hakkinda extends StatefulWidget {

  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('HAKKINDA'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            ColoredBox(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.centerLeft,
                transform: Matrix4.skewY(0.3)..rotateZ(0.0 / 12.0),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  color: Colors.blue,
                  child: const Text(''),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text('''
Leziz Yemek Tarifleri
            
            
Versiyon 1.0.24
            
            
Her Hakkı Saklıdır


© 2023 - ∞ Leziz Yemek Tarifleri
            
            
Şikayet ve Öneri için iletişim:
            
            
1enesbayar@gmail.com''', textAlign: TextAlign.center,style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

            const SizedBox(height: 30),

            Animation_button(),
          ],
        ),
        ),
      ),
    );
  }
}