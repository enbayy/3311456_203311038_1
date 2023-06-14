import 'package:flutter/material.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Kofte.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Kuru_Fasulye.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Zulbiye.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Patlican_Kebabi.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Islim_Kebabi.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Zeytinyagli_Yaprak_Sarmasi.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/firinda_tavuk_patates.dart';
import 'package:izleme/constant/custom_animation_button.dart';
import 'package:izleme/constant/custom_divider.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';
import 'package:izleme/constant/custom_materialButton.dart';
import 'package:izleme/pages/Eniyiyemek.dart';
import 'package:izleme/pages/yemek_sureleri.dart';
import 'package:izleme/pages/yemek_yapilim.dart';

class Anayemekler extends StatefulWidget {

  @override
  _Anayemekler createState() => _Anayemekler();
}

class _Anayemekler extends State<Anayemekler> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('ANA YEMEKLER'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/kuru_fasulye.jpg',
              text: "KURU FASULYE",
              page: Kuru_fasulye(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/patlican_kebabi.jpg',
              text: "PATLICAN KEBABI",
              page: Patlican_kebabi(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/kofte.jpg',
              text: "KOFTE",
              page: Kofte(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/islim_kebabi.jpg',
              text: "İSLİM KEBABI",
              page: Islim_kebabi(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/Zulbiye.jpg',
              text: "ZÜLBİYE",
              page: Zulbiye(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/yaprak_sarmasi.jpg',
              text: "Z.YAPRAK SARMASI",
              page: Zeytinyagli_Yaprak_sarmasi(),
            ),

            MyDivider(),

            CustomMaterialButton(
              image: 'assets/resimler/firinda_tavuk_patates.jpg',
              text: "FIRINDA TAVUK",
              page: firinda_tavuk_patates(),
            ),

            MyDivider(),

            CustomElevatedButton(
              text:'En iyi yemek hangisiydi?',
              page: Eniyiyemek(),
              icon: Icons.add_chart,
            ),

            MyDivider(),

            CustomElevatedButton(
              text:'Yemek Süreleri',
              page: YemekSureleri(),
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