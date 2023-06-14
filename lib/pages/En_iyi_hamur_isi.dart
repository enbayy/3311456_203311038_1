import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/constant/Custom_divider.dart';

class En_iyi_hamur_isi extends StatefulWidget {

  @override
  eniyitatli createState() => eniyitatli();
}

class eniyitatli extends State<En_iyi_hamur_isi> {
  String hamur = "";

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

              RadioListTile(value: "Haşhaşlı Çörek", groupValue: hamur, onChanged: (deger){
                setState(() {
                  hamur = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Haşhaşlı Çörek",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Peynirli Börek", groupValue: hamur, onChanged: (deger){
                setState(() {
                  hamur = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Peynirli Börek",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Ispanaklı Pasta", groupValue: hamur, onChanged: (deger){
                setState(() {
                  hamur = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Ispanaklı Pasta",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Gelin Çantası", groupValue: hamur, onChanged: (deger){
                setState(() {
                  hamur = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Gelin Çantası",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Ç.Otlu Kurabiye", groupValue: hamur, onChanged: (deger){
                setState(() {
                  hamur = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Ç.Otlu Kurabiye",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Pamuk Poğaça", groupValue: hamur, onChanged: (deger){
                setState(() {
                  hamur = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Pamuk Poğaça",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Elmalı Kurabiye", groupValue: hamur, onChanged: (deger){
                setState(() {
                  hamur = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Elmalı Kurabiye",style: TextStyle(fontSize: 23),),),
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