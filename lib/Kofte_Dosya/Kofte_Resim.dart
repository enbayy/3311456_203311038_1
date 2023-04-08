import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KofteResim extends StatefulWidget {

  @override
  _KofteResimState createState() => _KofteResimState();
}

class _KofteResimState extends State<KofteResim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('RESİM'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Image.asset("assets/resimler/kofte.jpg"),


          ElevatedButton(
            child: Text('Ana Sayfaya git', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => anaekran()));
            },
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),


        ],
      ),
    );
  }
}