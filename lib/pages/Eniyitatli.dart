import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/constant/Custom_divider.dart';

class Eniyitatli extends StatefulWidget {

  @override
  eniyitatli createState() => eniyitatli();
}

class eniyitatli extends State<Eniyitatli> {
  String tatli = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Puanlama'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[

              Text('En iyisi hangisiydi?',style: TextStyle(fontSize: 34),),
              MyDivider(),

              RadioListTile(value: "Güllaç", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Güllaç",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Kazandibi", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Kazandibi",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Haşhaşlı Revani", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Haşhaşlı Revani",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Ayva Tatlısı", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Ayva Tatlısı",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Balparmak", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Balparmak",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Dilber Dudağı", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Dilber Dudağı",style: TextStyle(fontSize: 23),),),
              SizedBox(height: 20,),

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