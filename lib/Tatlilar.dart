import 'package:flutter/material.dart';
import 'package:izleme/AYVA_TATLISI_DOSYA/AYVA_TATLISI.dart';
import 'package:izleme/BALPARMAK_DOSYA/BALPARMAK.dart';
import 'package:izleme/DILBER_DUDAGI_DOSYA/DILBER_DUDAGI.dart';
import 'package:izleme/GULLAC_DOSYA/GULLAC.dart';
import 'package:izleme/HASHASLI_REVANI_DOSYA/HASHASLI_REVANI.dart';
import 'package:izleme/KAZANDIBI_DOSYA/KAZANDIBI.dart';
import 'package:izleme/anaekran.dart';

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
                      image: AssetImage('assets/resimler/gullac.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("GÜLLAÇ", textAlign: TextAlign.center, style: TextStyle(fontSize: 40), ),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Gullac()));
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
                      image: AssetImage('assets/resimler/kazandibi.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("KAZANDİBİ", textAlign: TextAlign.center, style: TextStyle(fontSize: 40),),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Kazandibi()));
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
                      image: AssetImage('assets/resimler/hashasli_revani.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("HAŞHAŞLI REVANİ", textAlign: TextAlign.center, style: TextStyle(fontSize: 40),),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HashasliRevani()));
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
                      image: AssetImage('assets/resimler/ayva_tatlisi.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("AYVA TATLISI", textAlign: TextAlign.center, style: TextStyle(fontSize: 40),),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Ayva_tatlisi()));
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
                      image: AssetImage('assets/resimler/balparmak.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("BALPARMAK", textAlign: TextAlign.center, style: TextStyle(fontSize: 40),),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Balparmak()));
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
                      image: AssetImage('assets/resimler/dilber_dudagi.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:EdgeInsets.all(19.0),
                  child: Text("DİLBER DUDAĞI", textAlign: TextAlign.center, style: TextStyle(fontSize: 40),),

                ),
              ),
              // ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dilber_dudagi()));
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