import 'package:flutter/material.dart';
import 'package:izleme/Login.dart';
import 'package:izleme/Popup_menu.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leziz Yemek Tarifleri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Anasayfa(),
    );
  }
}


class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(

        actions: [Popup_menu()],
        title: Text('Leziz Yemek Tarifleri'),
        elevation: 10,
        backgroundColor: Colors.amber,
        leading: Container(
    child: Image.asset('assets/resimler/logo.png'),
      ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Divider(
              thickness:2,
              height: 30,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            Text('HOŞGELDİNİZ'
                ,textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Satisfy',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                //backgroundColor: Colors.red,
                color: Colors.white)
            ),


            Divider(
              thickness:2,
              height: 30,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),





            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  primary: Colors.grey.shade900,
                  minimumSize: Size(70, 70)),
              child: Text('GİRİŞ YAP', style: TextStyle(
                  fontFamily: 'Satisfy',
                  fontSize: 34)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));

              },
            ),


            Divider(
              thickness:2,
              height: 30,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),













          ],
        ),
      ),
    );
  }
}

