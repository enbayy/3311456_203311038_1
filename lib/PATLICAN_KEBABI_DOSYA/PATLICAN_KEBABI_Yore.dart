import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class PatlicanKebabiYore extends StatefulWidget {

  @override
  _PatlicanKebabiYoreState createState() => _PatlicanKebabiYoreState();
}

class _PatlicanKebabiYoreState extends State<PatlicanKebabiYore> {
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

            Text("Gaziantep ve Güney Türkiye'nin diğer bölgelerinde, insanlar geleneksel olarak evde arta kalan patlıcan ve tavuk etinden bir tepsi patlıcan kebabı hazırlar, sonra odun ateşinde pişmek üzere yerel bir fırına götürür.", style: TextStyle(fontSize: 21)),



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