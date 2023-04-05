


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:izleme/Bilgi_Sayfasi.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giriş Ekranı',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _isim = new TextEditingController();
  TextEditingController _soyad = new TextEditingController();
  TextEditingController _yemek = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Giriş Ekranı'), backgroundColor: Colors.amber,),
      body: Center(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 250, height: 250,child:
            Image.asset('assets/resimler/kullanici.png'),),


          Padding(
              padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _isim,
            decoration: InputDecoration(
              hintText: 'Adınız',
              filled: true, fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
            ),
          )
    ),

          Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Soyadınız',
                  filled: true, fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                ),
              )
          ),

          Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _yemek,
                decoration: InputDecoration(
                  hintText: 'Yapmak İstediğiniz Yemek',
                  filled: true, fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                ),
              )
          ),




          SizedBox(height: 20,),



          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Bilgi_Sayfasi(isim: _isim.text, soyad: _soyad.text, yemek: _yemek.text)));
          }, child: Text('Giriş Yap'))



        ],
      ),
        ),
      ),
    );
  }
}



