import 'package:flutter/material.dart';
import 'package:izleme/constant/Custom_divider.dart';
import 'package:izleme/constant/custom_animation_button.dart';

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
        title: const Text('Bugün Ne Yesem?'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          children:[

            const Text('''
            
Bugün Menümüzde Bunlar Var :)''', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),

            MyDivider(),

            const Text('''
ZÜLBİYE
            ''', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),

            Image.asset("assets/resimler/Zulbiye.jpg"),

            const Text('''

HAŞHAŞLI REVANİ
''', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),

            Image.asset("assets/resimler/hashasli_revani.jpg"),
            Animation_button(),

          ],
        ),
        ),
      ),
    );
  }
}