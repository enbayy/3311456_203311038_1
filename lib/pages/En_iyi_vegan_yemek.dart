import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/constant/Custom_divider.dart';

class En_iyi_vegan extends StatefulWidget {

  @override
  eniyitatli createState() => eniyitatli();
}

class eniyitatli extends State<En_iyi_vegan> {
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

              RadioListTile(value: "Şakşuka", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Şakşuka",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Yeşil Mercimek Salatası", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Yeşil Mercimek Salatası",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Piyaz", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Piyaz",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Mercimek Köftesi", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Mercimek Köftesi",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Yağlı Kırmızı Biber", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Yağlı Kırmızı Biber",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Pizza", groupValue: tatli, onChanged: (deger){
                setState(() {
                  tatli = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Pizza",style: TextStyle(fontSize: 23),),),
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