import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class AyvaTatlisiResim extends StatefulWidget {

  @override
  _AyvaTatlisiResimState createState() => _AyvaTatlisiResimState();
}

class _AyvaTatlisiResimState extends State<AyvaTatlisiResim> {
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
          Image.asset("assets/resimler/ayva_tatlisi.jpg"),


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