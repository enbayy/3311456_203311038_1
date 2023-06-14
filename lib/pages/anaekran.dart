import 'package:flutter/material.dart';
import 'package:izleme/constant/Custom_divider.dart';
import 'package:izleme/pages/Drawer_pages/Drawer.dart';
import 'package:izleme/pages/menu.dart';
import 'package:izleme/pages/bugun_ne_yesem.dart';
import 'package:izleme/services/sqlite/Tarifyaz.dart';

class anaekran extends StatefulWidget {

  @override
  _anaekran createState() => _anaekran();
}

class _anaekran extends State<anaekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Leziz Yemek Tarifleri'),
        centerTitle: true,
      ),
      drawer: const My_Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:[

              SizedBox(height: 30),
              MyDivider(),
              const SizedBox(height: 30),

              GestureDetector(child: Container(
                child: const Text('TARİFLER', style: TextStyle(fontSize: 43,color: Colors.white),),
              ),
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Tarifler Sayfasına Geçiş Yapıldı')));
                Navigator.push(context, MaterialPageRoute(builder: (context) => Yemekler()));
              }, ),
              const Text('Çift tıklayınız',style: TextStyle(fontSize: 12),),

              const SizedBox(height: 30),
              MyDivider(),
              const SizedBox(height: 30),

              GestureDetector(child: Container(
                child: const Text('BUGÜN NE YESEM?', style: TextStyle(fontSize: 43,color: Colors.white),),
              ),
                onLongPress: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Bugün Ne Yesem Sayfasına Geçiş Yapıldı')));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bugunneyesem()));
                }, ),
              const Text('Uzun basınız',style: TextStyle(fontSize: 12),),

              const SizedBox(height: 30),
              MyDivider(),
              const SizedBox(height: 30),

              GestureDetector(
                child: Text('TARİFİNİ YAZ', style: TextStyle(fontSize: 43,color: Colors.white),),
                onTapDown: (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tarifini Yaz Sayfasına Geçiş Yapıldı')));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Tarif_Yaz()));
                },
              ),

              SizedBox(height: 30),
              MyDivider(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}