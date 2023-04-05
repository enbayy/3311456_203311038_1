import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class DilberDudagiResim extends StatefulWidget {

  @override
  _DilberDudagiResimState createState() => _DilberDudagiResimState();
}

class _DilberDudagiResimState extends State<DilberDudagiResim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('RESİM'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Image.asset("assets/resimler/dilber_dudagi.jpg"),


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