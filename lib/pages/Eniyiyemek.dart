import 'package:flutter/material.dart';
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/constant/Custom_divider.dart';

class Eniyiyemek extends StatefulWidget {

  @override
  eniyiyemek createState() => eniyiyemek();
}

class eniyiyemek extends State<Eniyiyemek> {
  String yemek = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
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

              RadioListTile(value: "Kuru Fasulye", groupValue: yemek, onChanged: (deger){
                setState(() {
                  yemek = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Kuru Fasulye",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Patlıcan Kebabı", groupValue: yemek, onChanged: (deger){
                setState(() {
                  yemek = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Patlıcan Kebabı",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Köfte", groupValue: yemek, onChanged: (deger){
                setState(() {
                  yemek = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Köfte",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "İslim Kebabı", groupValue: yemek, onChanged: (deger){
                setState(() {
                  yemek = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("İslim Kebabı",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Zülbiye", groupValue: yemek, onChanged: (deger){
                setState(() {
                  yemek = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Zülbiye",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Yaprak Sarması", groupValue: yemek, onChanged: (deger){
                setState(() {
                  yemek = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Yaprak Sarması",style: TextStyle(fontSize: 23),),),

              RadioListTile(value: "Fırında Tavuk", groupValue: yemek, onChanged: (deger){
                setState(() {
                  yemek = deger!;
                  debugPrint("Seçilen değer : $deger");
                });
              },title: Text("Fırında Tavuk",style: TextStyle(fontSize: 23),),),
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