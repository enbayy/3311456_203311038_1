import 'package:flutter/material.dart';
import 'file_utils.dart';

class FileOperationsScreen extends StatefulWidget {
  const FileOperationsScreen({super.key});

  final String title = "File Operations";

  @override
  _FileOperationsScreenState createState() => _FileOperationsScreenState();
}

class _FileOperationsScreenState extends State<FileOperationsScreen> {
  String fileContents = "Veri Girilmedi";
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Notlar'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myController,
              decoration: const InputDecoration(
                hintText: 'Metin Giriniz',
                filled: true, fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.amber, width: 4),
                primary: Colors.grey.shade900,
                minimumSize: const Size(70,70)),
            child: const Text("Kaydet"),
            onPressed: () {
              FileUtils.saveToFile(myController.text);
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.amber, width: 4),
                primary: Colors.grey.shade900,
                minimumSize: const Size(70,70)),
            child: const Text("Göster"),
            onPressed: () {
              FileUtils.readFromFile().then((contents) {
                setState(() {
                  fileContents = contents;
                });
              });
            },
          ),
          Text(fileContents,style: const TextStyle(fontSize: 25),),
        ],
      ),
    );
  }
}