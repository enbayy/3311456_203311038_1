import 'package:flutter/material.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Hashasli_corek.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Ispanakli_pasta.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Pamuk_pogaca.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/Peynirli_borek.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/c_otlu_kurabiye.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/elmali_kurabiye.dart';
import 'package:izleme/pages/Yemekler_Tatlilar/gelin_cantasi.dart';
import 'package:izleme/constant/custom_animation_button.dart';
import 'package:izleme/constant/custom_divider.dart';
import 'package:izleme/constant/custom_elevetedButton.icon.dart';
import 'package:izleme/constant/custom_materialButton.dart';
import 'package:izleme/pages/En_iyi_hamur_isi.dart';
import 'package:izleme/pages/Hamur_isi_sureleri.dart';

class Hamur_isleri extends StatefulWidget {

  @override
  _Tatli createState() => _Tatli();
}

class _Tatli extends State<Hamur_isleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('HAMUR İŞLERİ'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/hashasli_corek.jpg',
                text: "HAŞHAŞLI ÇÖREK",
                page: Hashasli_corek(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/peynirliborek.JPG',
                text: "PEYNİRLİ BÖREK",
                page: Peynirli_borek(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/ispanakli_pasta.JPG',
                text: '''ISPANAKLI PASTA''',
                page: Ispanakli_pasta(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/gelin_cantasi.jpg',
                text: "GELİN ÇANTASI",
                page: gelin_cantasi(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/c_otlu_kurabiye.jpg',
                text: "Ç.OTLU KURABİYE",
                page: c_otlu_kurabiye(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/pamuk_pogaca.JPG',
                text: "PAMUK POĞAÇA",
                page: Pamuk_pogaca(),
              ),

              MyDivider(),

              CustomMaterialButton(
                image: 'assets/resimler/elmali_kurabiye.jpg',
                text: "ELMALI KURABİYE",
                page: elmali_kurabiye(),
              ),

              MyDivider(),

              CustomElevatedButton(
                text:'En iyisi hangisiydi?',
                page: En_iyi_hamur_isi(),
                icon: Icons.add_chart,
              ),

              MyDivider(),

              CustomElevatedButton(
                text:'Süreler',
                page: Hamur_sureleri(),
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