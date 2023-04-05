import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';

class PatlicanKebabiTarihce extends StatefulWidget {

  @override
  _PatlicanKebabiTarihceState createState() => _PatlicanKebabiTarihceState();
}

class _PatlicanKebabiTarihceState extends State<PatlicanKebabiTarihce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('TARİHÇE'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[


            Text('Patlıcan kebabı, sığır ve kuzu gibi ince doğranmış (kıyılmamış) etle sıra halinde katmanlanan patlıcan parçalarından oluşur. Şişe geçirilip ateşte pişirilebilir.', style: TextStyle(fontSize: 20)),
            Text("Gaziantep ve Güney Türkiye'nin diğer bölgelerinde, insanlar geleneksel olarak evde arta kalan patlıcan ve tavuk etinden bir tepsi patlıcan kebabı hazırlar, sonra odun ateşinde pişmek üzere yerel bir fırına götürürdü.", style: TextStyle(fontSize: 20)),
            Text('Fırında patlıcan kebabı bir tabakta şişle veya yuvarlak bir tavaya dizilmiş malzemelerle, karabiber gibi baharatlarla yapılabilir ve çiğ soğan ve yufka veya lavaş adı verilen yumuşak bir Türk ekmeği ile yenebilir.', style: TextStyle(fontSize: 20)),




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