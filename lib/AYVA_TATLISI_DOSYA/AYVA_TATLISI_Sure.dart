import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class AyvaTatlisiSure extends StatefulWidget {

  @override
  _AyvaTatlisiSureState createState() => _AyvaTatlisiSureState();
}

class _AyvaTatlisiSureState extends State<AyvaTatlisiSure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('SÜRE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[


            Text(' '),
            Text('Suyu da tencereye ekledikten sonra tencerenin kapağını kapatarak su kaynayana kadar orta ateşte, kaynadıktan sonra da en küçük ocağınızda kısık ateşte 1-1,5 saat kadar pişirin.', style: TextStyle(fontSize: 23)),
            Text(' '),
            Text('Ayvalar rengini aldıktan ve yumuşadıktan sonra ocaktan alabilirsiniz. Tatlıları servis kabınıza alın ve 3-4 saat kadar soğuması için bekletin.', style: TextStyle(fontSize: 23)),
            Text(' '),


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