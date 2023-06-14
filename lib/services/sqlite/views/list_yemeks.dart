import "package:flutter/material.dart";
import "../model/m_yemek.dart";
import '../service/db_utils.dart';

DbUtils utils = DbUtils();

class Listyemeks extends StatefulWidget {
  @override
  _ListyemeksState createState() => _ListyemeksState();
}

class _ListyemeksState extends State<Listyemeks> {
  List<yemek> yemekList = [];

  void getData() async {
    await utils.yemeks().then((result) => {
      setState(() {
        yemekList = result;
      })
    });
    print(yemekList);
  }

  void showAlert(String alertTitle, String alertContent) {
    AlertDialog alertDialog;
    alertDialog =
        AlertDialog(title: Text(alertTitle), content: Text(alertContent));
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(yemekList.length.toString() + " Yemek Tarifi Listelendi"),
        backgroundColor: Colors.amber,
        centerTitle: true,),
      backgroundColor: Colors.grey.shade700,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: yemekList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(yemekList[index].name,style: const TextStyle(fontSize: 25),),
                    onTap: () {},
                    onLongPress: () async {
                      await utils.deleteyemek(yemekList[index].id).then((value) => {
                        showAlert("Yemek silindi",
                            "Tarifinizi yazmak için önceki sayfaya gidin.")
                      });
                      getData();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}