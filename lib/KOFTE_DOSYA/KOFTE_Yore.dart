import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class KofteYore extends StatefulWidget {

  @override
  _KofteYoreState createState() => _KofteYoreState();
}

class _KofteYoreState extends State<KofteYore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YÖRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[



            Text('O, meşhur köfteler denince ilk akla gelendir. Kuzu ve dana etinin görece yağlı kısımlarından hazırlanan ve yapımından pişirilmesine, işlenmesinden bekletilmesine kadar türlü zahmetli süreçlerden geçen Tekirdağ köfte, içerdiği irmikle farklı bir lezzet yelpazesinde yer alır.', style: TextStyle(fontSize: 22)),




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
    );
  }
}