import 'package:flutter/material.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/mercimek_kofte.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/piyaz.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/saksuka.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/vegan_pizza.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/yagli_kirmizi_biber.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/yesil_mercimek_salatasi.dart';
import 'package:izleme/constant/custom_animation_button.dart';
import 'package:izleme/constant/custom_divider.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';
import 'package:izleme/constant/custom_materialButton.dart';
import 'package:izleme/pages/En_iyi_vegan_yemek.dart';
import 'package:izleme/pages/vegan_yemek_sureleri.dart';

class Vegan extends StatefulWidget {

  @override
  _Tatli createState() => _Tatli();
}

class _Tatli extends State<Vegan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('VEGAN YEMEKLER'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/saksuka.jpg',
                text: "ŞAKŞUKA",
                page: Saksuka(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/yesil_mercimek_salatasi.jpg',
                text: "YEŞİL MERCİMEK S.",
                page: Yesil_Mercimek_Salatasi(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/piyaz.jpg',
                text: "PİYAZ",
                page: Piyaz(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/mercimek_kofte.jpg',
                text: "MERCİMEK KÖFTESİ",
                page: Mercimek_Kofte(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/yagli_kirmizi_biber.jpg',
                text: "Y.KIRMIZI BİBER",
                page: Yagli_Kirmizi_Biber(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/vegan_pizza.jpg',
                text: "PİZZA",
                page: Vegan_Pizza(),
              ),

              MyDivider(),

              CustomElevatedButton(
                text:'En iyi vegan yemek hangisiydi?',
                page: En_iyi_vegan(),
                icon: Icons.add_chart,
              ),

              MyDivider(),

              CustomElevatedButton(
                text:'Yemek Süreleri',
                page: Vegan_yemek_sureleri(),
                icon: Icons.access_time,
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