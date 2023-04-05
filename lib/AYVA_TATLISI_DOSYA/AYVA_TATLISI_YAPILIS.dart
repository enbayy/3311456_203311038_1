import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class AyvaTatlisiYapilis extends StatefulWidget {

  @override
  _AyvaTatlisiYapilisState createState() => _AyvaTatlisiYapilisState();
}

class _AyvaTatlisiYapilisState extends State<AyvaTatlisiYapilis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('YAPILIŞ'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[


              Text(' '),
              Text('1) Ayva tatlısı hazırlamak için ilk olarak derince bir kaba su doldurun ve içerisine limonu sıkın.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('2) Ayvaları ikiye bölerek çekirdeklerin bulunduğu kısmı çıkartın ve ayvanın kabuğunu soyun.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('3) Bu aşamada çıkarttığınız çekirdekleri ayrı bir yerde biriktirin, pişirme esnasında tatlımıza renk vermesi için kullanacağız.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('4) Hazırlamış olduğunuz ayvaları limon suda bekletin, ayvaların kararmaması için bu önemli.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('5) Tüm ayvalar için aynı işlemi yaptıktan sonra pişirme kabınıza ayvaların orta kısımları üstte kalacak şekilde yerleştirin.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('6) Tarçın çubuğunuzu, karanfilleri ve ayva çekirdeklerinin tamamını tencereye ekleyin.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('7) Ayvaların her birinin üzerine bir kahve fincanı toz şekeri dökün.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('8) Suyu da tencereye ekledikten sonra tencerenin kapağını kapatarak su kaynayana kadar orta ateşte, kaynadıktan sonra da en küçük ocağınızda kısık ateşte 1-1,5 saat kadar pişirin.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('9) Ayvalar rengini aldıktan ve yumuşadıktan sonra ocaktan alabilirsiniz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('10) Tatlıları servis kabınıza alın ve 3-4 saat kadar soğuması için bekletin.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('11) Servis ederken kalan şerbetinden ayvaların üzerine gezdirmeyi unutmayın.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('12)Kaymak ve Antep fıstığı ile süsledim siz tercihlerinize göre süsleyebilirsiniz.', style: TextStyle(fontSize: 19)),
              Text(' '),
              Text('Not: Ayva tatlısı pişene kadar tencerenin kapağını kapalı tutun.', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              Text(' '),
              Text('AFİYET OLSUN!', style: TextStyle(fontSize: 20)),
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
      ),
    );
  }
}