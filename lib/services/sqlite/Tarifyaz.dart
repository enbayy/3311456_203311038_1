import "package:flutter/material.dart";
import 'package:izleme/pages/anaekran.dart';
import 'package:izleme/services/sqlite/service/db_utils.dart';
import 'package:izleme/services/sqlite/views/list_yemeks.dart';
import 'package:sqflite/sqflite.dart';
import 'package:izleme/services/sqlite/model/m_yemek.dart';

DbUtils utils = DbUtils();

class Tarif_Yaz extends StatefulWidget {
  const Tarif_Yaz({Key? key}) : super(key: key);

  @override
  _Tarif_YazState createState() => _Tarif_YazState();
}

class _Tarif_YazState extends State<Tarif_Yaz> {
  TextEditingController yemekIdController = TextEditingController();
  TextEditingController yemekAdController = TextEditingController();

  late Future<Database> database;

  List<yemek> yemekList = [];

  _onPressedUpdate() async {
    final tarif = yemek(
      id: int.parse(yemekIdController.text),
      name: yemekAdController.text,
    );
    utils.updateyemek(tarif);
    yemekList = await utils.yemeks();
    getData();
  }

  _onPressedAdd() async {
    final tarif = yemek(
      id: int.parse(yemekIdController.text),
      name: yemekAdController.text,
    );
    utils.insertyemek(tarif);
    yemekList = await utils.yemeks();
    getData();
  }

  _deleteyemekTable() {
    utils.deleteTable();
    yemekList = [];
    getData();
  }

  void getData() async {
    await utils.yemeks().then((result) => {
      setState(() {
        yemekList = result;
      })
    });
    print(yemekList);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Kendi Tarifleriniz"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
          },),),
        backgroundColor: Colors.grey.shade700,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: yemekIdController,
                  decoration: const InputDecoration(
                    hintText: 'Lütfen Bir Rakam Girin',
                    filled: true, fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: yemekAdController,
                  decoration: const InputDecoration(
                    hintText: 'Tarifinizi Yazınız',
                    filled: true, fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 80,
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: const BorderSide(color: Colors.amber, width: 4),
                        primary: Colors.grey.shade900,
                        minimumSize: Size(50,50)),
                    onPressed: _onPressedAdd, child: Text("Ekle",style: TextStyle(fontSize: 20),)),
              ),
                      const SizedBox(
                        width: 50,
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: const BorderSide(color: Colors.amber, width: 4),
                        primary: Colors.grey.shade900,
                        minimumSize: Size(50,50)),
                    onPressed: _onPressedUpdate, child: Text("Güncelle",style: TextStyle(fontSize: 20),)),
              ),
              ]
                  ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 90,
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: const BorderSide(color: Colors.amber, width: 4),
                        primary: Colors.grey.shade900,
                        minimumSize: Size(50,50)),
                    onPressed: _deleteyemekTable,
                    child: const Text("Sil",style: TextStyle(fontSize: 20),)),
              ),
                  const SizedBox(
                    width: 60,
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: const BorderSide(color: Colors.amber, width: 4),
                        primary: Colors.grey.shade900,
                        minimumSize: Size(50,50)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Listyemeks()),
                      );
                    },
                    child: const Text("Listele",style: TextStyle(fontSize: 20),)),
              ),
                ]
              ),
                ]
              ),

              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: yemekList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(yemekList[index].name,
                              style: const TextStyle(fontSize: 20),),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}