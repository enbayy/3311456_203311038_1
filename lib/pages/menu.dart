import 'package:flutter/material.dart';
import 'package:izleme/constant/Custom_divider.dart';
import 'package:izleme/constant/custom_animation_button.dart';
import 'package:izleme/constant/custom_elevatedButton.dart';
import 'package:izleme/pages/Anayemekler.dart';
import 'package:izleme/pages/Hamur_isleri.dart';
import 'package:izleme/pages/Tatlilar.dart';
import 'package:izleme/pages/vegan_yemekleri.dart';

class Yemekler extends StatefulWidget {

  @override
  _YemeklerState createState() => _YemeklerState();
}

class _YemeklerState extends State<Yemekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MENÜ'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            MyDivider(),

            MyElevatedButton(
              text: 'ANA YEMEKLER',
              page: Anayemekler(),
              color: Colors.amber,
            ),

            MyDivider(),

            MyElevatedButton(
                text: 'TATLILAR',
                page: Tatli(),
                color: Colors.amber
            ),

            MyDivider(),

            MyElevatedButton(
                text: 'VEGAN YEMEKLERİ',
                page: Vegan(),
                color: Colors.amber
            ),

            MyDivider(),

            MyElevatedButton(
                text: 'HAMUR İŞLERİ',
                page: Hamur_isleri(),
                color: Colors.amber
            ),

            MyDivider(),

            Animation_button(),

          ],
        ),
      ),
    );
  }
}