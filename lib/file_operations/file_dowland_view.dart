import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class FileDownloadView extends StatefulWidget {
  @override
  _FileDownloadViewState createState() => _FileDownloadViewState();
}

class _FileDownloadViewState extends State<FileDownloadView> {
  String _filePath = "";

  Future<String> get _localDevicePath async {
    final _devicePath = await getApplicationDocumentsDirectory();
    return _devicePath.path;
  }

  Future<File> _localFile({required String path, required String type}) async {
    String _path = await _localDevicePath;

    var _newPath = await Directory("$_path/$path").create();
    return File("${_newPath.path}/enes.$type");
  }

  Future _downloadSamplePDF() async {
    final _response = await http.get(Uri.parse(
        "https://www.sefabdullahusta.com/yemek-kitabi.pdf"));
    if (_response.statusCode == 200) {
      final _file = await _localFile(path: "pdfs", type: "pdf");
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      print("Dosya yazma işlemi tamamlandı. Dosyanın yolu: ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      print(_response.statusCode);
    }
  }

  Future _downloadSampleVideo() async {
    final _response = await http
        .get(Uri.parse("https://www.youtube.com/watch?v=iD53tDxDRyY"));
    if (_response.statusCode == 200) {
      final _file = await _localFile(
        path: "mp4s",
        type: "mp4",
      );
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      print("Dosya yazma işlemi tamamlandı. Dosyanın yolu: ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      print(_response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İndir'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/resimler/sef.png",height: 445,alignment: Alignment.center),
            Row(
              children: [
                ElevatedButton.icon(
              onPressed: () {
                _downloadSamplePDF();
                },
              style: ElevatedButton.styleFrom(primary: Colors.grey.shade900,shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.amber, width: 4),),
              icon: const Icon(Icons.file_download, size: 50, color: Colors.white),
              label: const Text("Pdf İndir", style: TextStyle(fontSize: 27, color: Colors.white)),
            ),
            ElevatedButton.icon(
              onPressed: () {
                _downloadSampleVideo();
              },
              style: ElevatedButton.styleFrom(primary: Colors.grey.shade900,shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.amber, width: 4),),
              icon: const Icon(Icons.file_download, size: 50, color: Colors.white),
              label: const Text('Video İndir', style: TextStyle(fontSize: 27, color: Colors.white)),
            ),
        ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_filePath),
            ),

            ElevatedButton.icon(
              onPressed: () async{
                final _openFile = await OpenFilex.open(_filePath);
                print(_openFile);
              },
              style: ElevatedButton.styleFrom(primary: Colors.grey.shade900,shape: StadiumBorder(),
                side: const BorderSide(color: Colors.amber, width: 4),),
              icon: const Icon(Icons.tv, size: 55, color: Colors.white),
              label: const Text("İndirilen Dosyayı Göster", style: TextStyle(fontSize: 27, color: Colors.white)),
            ),
          ],
        ),
        ),
      ),
    );
  }
}