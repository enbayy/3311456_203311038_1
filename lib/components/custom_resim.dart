import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';

class CustomResim extends StatefulWidget {
  CustomResim({ this.image});

  @override
  _CustomResimState createState() => _CustomResimState();
  final String? image;
}

class _CustomResimState extends State<CustomResim> {
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

          Image.asset(widget.image!),

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