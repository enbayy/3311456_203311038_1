import 'package:flutter/material.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/ayva_tatlisi.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/balparmak.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Dilber_Dudagi.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Gullac.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Hashasli_Revani.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Kazandibi.dart';
import 'package:izleme/constant/custom_animation_button.dart';
import 'package:izleme/constant/custom_divider.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';
import 'package:izleme/constant/custom_materialButton.dart';
import 'package:izleme/pages/Eniyitatli.dart';
import 'package:izleme/pages/tatli_sureleri.dart';
import 'package:izleme/pages/yemek_yapilim.dart';

class Tatli extends StatefulWidget {

  @override
  _Tatli createState() => _Tatli();
}

class _Tatli extends State<Tatli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('TATLILAR'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/gullac.jpg',
              text: "GÜLLAÇ",
              page: Gullac(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/kazandibi.jpg',
              text: "KAZANDİBİ",
              page: Kazandibi(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/hashasli_revani.jpg',
              text: "HAŞHAŞLI REVANİ",
              page: HashasliRevani(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/ayva_tatlisi.jpg',
              text: "AYVA TATLISI",
              page: Ayva_tatlisi(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/balparmak.jpg',
              text: "BALPARMAK",
              page: Balparmak(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/dilber_dudagi.jpg',
              text: "DİLBER DUDAĞI",
              page: Dilber_dudagi(),
            ),

            MyDivider(),

            CustomElevatedButton(
              text:'En iyi tatlı hangisiydi?',
              page: Eniyitatli(),
              icon: Icons.add_chart,
            ),

            MyDivider(),

            CustomElevatedButton(
              text:'Tatlı Süreleri',
              page: TatliSureleri(),
              icon: Icons.access_time,
            ),

            MyDivider(),

            CustomElevatedButton(
              text:'Kaç kişi ziyaret etti?',
              page: YemekYapilim(),
              icon: Icons.person,
            ),

            MyDivider(),

            Animation_button(),
          ],
        ),
        ),
      ),
    );
  }
}