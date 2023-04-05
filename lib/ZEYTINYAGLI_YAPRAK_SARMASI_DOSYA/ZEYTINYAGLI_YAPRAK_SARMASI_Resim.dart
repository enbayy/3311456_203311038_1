import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class YaprakSarmasiResim extends StatefulWidget {

  @override
  _YaprakSarmasiResimState createState() => _YaprakSarmasiResimState();
}

class _YaprakSarmasiResimState extends State<YaprakSarmasiResim> {
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
          Image.asset("assets/resimler/yaprak_sarmasi.jpg"),


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