import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';

class Bugunneyesem extends StatefulWidget {

  @override
  _BugunneyesemState createState() => _BugunneyesemState();
}

class _BugunneyesemState extends State<Bugunneyesem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Bugün Ne Yesem?'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          children:[

            Text(' '),
            Text('Bugün Menümüzde Bunlar Var :)', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),


            Divider(
              thickness:3,
              height: 10,
              indent: 10,
              endIndent: 10,
              color: Colors.black,
            ),


            Text(' '),
            Text(' '),
            Text('ZÜLBİYE', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
            Text(' '),
            Image.asset("assets/resimler/Zulbiye.jpg"),
            Text(' '),
            Text('HAŞHAŞLI REVANİ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
            Text(' '),
            Image.asset("assets/resimler/hashasli_revani.jpg"),
            Text(' '),

            ElevatedButton(
              child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 18)),
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