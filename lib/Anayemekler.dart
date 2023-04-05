import 'package:flutter/material.dart';
import 'package:izleme/KOFTE_DOSYA/KOFTE.dart';
import 'package:izleme/KURU_FASULYE_DOSYA/KURU_FASULYE.dart';
import 'package:izleme/ZULBIYE_DOSYA/ZULBIYE.dart';
import 'package:izleme/PATLICAN_KEBABI_DOSYA/PATLICAN_KEBABI.dart';
import 'package:izleme/ISLIM_KEBABI_DOSYA/ISLIM_KEBABI.dart';
import 'package:izleme/ZEYTINYAGLI_YAPRAK_SARMASI_DOSYA/ZEYTINYAGLI_YAPRAK_SARMASI.dart';
import 'package:izleme/anaekran.dart';

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
        title: Text('Ana Yemekler'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[

            Divider(
              thickness:3,
              height: 40,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              child: Container(
                width: 600,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red , borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                      image: AssetImage('assets/resimler/kuru_fasulye.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("KURU FASULYE", textAlign: TextAlign.center, style: TextStyle(fontSize: 40), ),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Kuru_fasulye()));
              },
            ),

            Divider(
              thickness:3,
              height: 40,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              child: Container(
                width: 600,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red , borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                      image: AssetImage('assets/resimler/patlican_kebabi.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("PATLICAN KEBABI", textAlign: TextAlign.center, style: TextStyle(fontSize: 40), ),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Patlican_kebabi()));
              },
            ),

            Divider(
              thickness:3,
              height: 40,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              child: Container(
                width: 600,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red , borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                      image: AssetImage('assets/resimler/kofte.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("KOFTE", textAlign: TextAlign.center, style: TextStyle(fontSize: 40), ),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Kofte()));
              },
            ),

            Divider(
              thickness:3,
              height: 40,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              child: Container(
                width: 600,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red , borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                      image: AssetImage('assets/resimler/islim_kebabi.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("İSLİM KEBABI", textAlign: TextAlign.center, style: TextStyle(fontSize: 40), ),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Islim_kebabi()));
              },
            ),

            Divider(
              thickness:3,
              height: 40,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              child: Container(
                width: 600,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red , borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                      image: AssetImage('assets/resimler/Zulbiye.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19.0),
                  child: Text("ZÜLBİYE", textAlign: TextAlign.center, style: TextStyle(fontSize: 40), ),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Zulbiye()));
              },
            ),

            Divider(
              thickness:3,
              height: 40,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),


            MaterialButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              child: Container(
                width: 600,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red , borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                      image: AssetImage('assets/resimler/yaprak_sarmasi.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: EdgeInsets.all(19.0),
                  child: Text("Z.YAPRAK SARMASI", textAlign: TextAlign.center, style: TextStyle(fontSize: 38), ),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Zeytinyagli_Yaprak_sarmasi()));
              },
            ),

            Divider(
              thickness:3,
              height: 40,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),



            ElevatedButton(
              child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 25)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),


          ],
        ),
        ),
      ),
    );
  }
}