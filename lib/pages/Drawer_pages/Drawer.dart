import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:izleme/pages/uygulama_kullanim.dart';
import 'package:izleme/services/api/views/users_view.dart';
import 'package:izleme/constant/custom_ListTile.dart';
import 'package:izleme/file_operations/file_dowland_view.dart';
import 'package:izleme/file_operations/file_operations.dart';
import 'package:izleme/pages/Drawer_pages/Hakkinda.dart';
import 'package:izleme/services/Sikayet_Oneri.dart';

class My_Drawer extends StatelessWidget {
  const My_Drawer({Key? key}) : super(key: key);
  colorizeAnimation() {
    const colorizeColors = [
      Colors.black,
      Colors.amber,
      Colors.black,
    ];
    const colorizeTextStyle = TextStyle(
        fontSize: 40.0
    );
    return Container(
      height: 75,
      width: double.infinity,
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
                '''MENÜ''',
                textStyle: colorizeTextStyle,
                colors: colorizeColors)
          ],
          repeatForever: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.amber,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 5,
                    margin: const EdgeInsets.only(top:10,bottom: 5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                   colorizeAnimation(),
                ],
              ),
            ),
          ),

          const MyListTile(
            text: 'Notlar',
            icon: Icons.notes,
            page: FileOperationsScreen(),
          ),

          MyListTile(
            text: 'Dosya İndir',
            icon: Icons.arrow_circle_down,
            page: FileDownloadView(),
          ),

          const MyListTile(
            text: 'Görüşleriniz',
            icon: Icons.note_alt_rounded,
            page: Sikayet_Oneri(),
          ),

          const MyListTile(
            text: 'Kullanıcı Bilgileri',
            icon: Icons.add_to_drive_outlined,
            page: UsersView(),
          ),

          const MyListTile(
            text: 'Kaç kişi ziyaret etti?',
            icon: Icons.add_chart_outlined,
            page: UygulamaKullanim(),
          ),

          MyListTile(
            text: 'Hakkında',
            icon: Icons.info,
            page: Hakkinda(),
          ),

          ListTile(
            leading: const Icon(Icons.arrow_back,color: Colors.amber),
            title: const Text(
              'Çıkış',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              if(Platform.isAndroid){
                SystemNavigator.pop();
              }else {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }
}