


import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';

class Bilgi_Sayfasi extends StatelessWidget {

  String isim,soyad,yemek;

  Bilgi_Sayfasi({required this.isim, required this.soyad, required this.yemek});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bilgiler',),backgroundColor: Colors.amber,),
      backgroundColor: Colors.grey,
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [


            SizedBox(height: 20),
            Text('Adınız: ${isim}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white,),),
            SizedBox(height: 20),
            Text('Soyadınız: ${soyad}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20),
            Text('Yemeğiniz: ${yemek}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20),
            Text('(:  Kolay Gelsin  :)', style: TextStyle(fontSize: 20),),
            SizedBox(height: 20),






            ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
          },
              child: Text('Ana Menü', style: TextStyle(fontSize: 20)))


        ],
      ),
      ),
    );
  }
}
