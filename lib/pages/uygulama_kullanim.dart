import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class UygulamaKullanim extends StatefulWidget {
  const UygulamaKullanim({super.key});


  @override
  _UygulamaKullanimState createState() => _UygulamaKullanimState();
}

class _UygulamaKullanimState extends State<UygulamaKullanim> {
  @override
  Widget build(BuildContext context) {
    var data = [
      Kisi("Pzt", 50),
      Kisi("Salı", 120),
      Kisi("Çrş", 100),
      Kisi("Prş", 70),
      Kisi("Cuma", 90),
      Kisi("Cmt", 130),
      Kisi("Pazar", 170),
    ];

    var series =[
      charts.Series(
        domainFn: (Kisi kisi,_)=>kisi.gun,
        measureFn: (Kisi kisi,_)=>kisi.yapilis_sayisi,
        id: 'Sales',
        data: data
      )
    ];

    var chart = charts.BarChart(
      series
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Uygulama Kullanım Grafiği'),
      centerTitle: true,
      ),
      body: chart,
    );
  }
}

class Kisi {
  final String gun;
  final int yapilis_sayisi;

  Kisi(this.gun, this.yapilis_sayisi);
}