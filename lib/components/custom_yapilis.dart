import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';


class CustomYapilis extends StatefulWidget {
  CustomYapilis({ this.text});

  @override
  _CustomYapilisState createState() => _CustomYapilisState();
  final String? text;
}

class _CustomYapilisState extends State<CustomYapilis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YAPILIŞ'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[

              Text(widget.text!, style: TextStyle(fontSize: 19)),

              ElevatedButton(
                child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 20)),
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