import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/constant/custom_divider.dart';
import 'package:izleme/constant/custom_chechbox.dart';

class CustomTarif extends StatefulWidget {
  CustomTarif({ this.text});
  @override
  _CustomTarifState createState() => _CustomTarifState();
  final String? text;
}

class _CustomTarifState extends State<CustomTarif> {
  bool? checkBoxState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('MALZEMELER'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[


              MyDivider(),
              Text(widget.text!, style: TextStyle(fontSize: 24)),

              MyDivider(),
              mycheckbox(),
              MyDivider(),

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