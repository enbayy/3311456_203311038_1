import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KuruFasulyeResim extends StatefulWidget {

  @override
  _KuruFasulyeResimState createState() => _KuruFasulyeResimState();
}

class _KuruFasulyeResimState extends State<KuruFasulyeResim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('RESİM'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Image.asset("assets/resimler/kuru_fasulye.jpg"),


          ElevatedButton(
            child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
            },
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),



        ],
        ),
      );
  }
}