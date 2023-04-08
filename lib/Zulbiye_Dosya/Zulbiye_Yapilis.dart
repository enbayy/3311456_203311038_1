import 'package:flutter/material.dart';
import 'package:izleme/anaekran.dart';


class ZulbiyeYapilis extends StatefulWidget {

  @override
  _ZulbiyeYapilisState createState() => _ZulbiyeYapilisState();
}

class _ZulbiyeYapilisState extends State<ZulbiyeYapilis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
              Text('1) Bir gece önceden nohutları ıslatın ve ertesi gün nohutları haşlayıp süzün.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('2) Sonrasında tereyağını eriterek tarife başlayın.    ', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('3) Eriyen yağa etleri ekleyip, etlerin renkleri değişene ve suyunu salana kadar pişirin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('4) Ardından, tencereye 1 tatlı kaşığı sirke ve 2,5 su bardağı da sıcak su ekleyin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('5) Etleri yumuşayıp suyunu çekip, hafiften yağına kalana kadar kapağı kapalı şekilde kısık ateşte pişirin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('6) Sonrasında, tencereye yıkadığınız arpacık soğanları ve bütün sarımsakları soyarak, doğramadan ekleyin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('7) Arpacık soğanlar şeffaflaşana kadar tüm malzemeyi en küçük ocakta, 5 dakika kadar çevirin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('8) Tencereye salçaları ekleyin ve yine kavurmaya devam edin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('9) Sonra yemeğe haşlanmış nohutları ve baharatları ekleyin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('10) Yemeğin üzerin 2 parmak geçecek kadar sıcak su eklemesi yaparak, kısık ateşte pişirin.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('11) Etler yumuşayınca yemeği ocaktan alıp, servis yapın.', style: TextStyle(fontSize: 20)),
              Text(' '),
              Text('AFİYET OLSUN!', style: TextStyle(fontSize: 22)),
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