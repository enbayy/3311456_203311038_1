import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Vegan_yemek_sureleri extends StatefulWidget {

  @override
  _Vegan_yemek_sureleriState createState() => _Vegan_yemek_sureleriState();
}

class _Vegan_yemek_sureleriState extends State<Vegan_yemek_sureleri> {
  @override
  Widget build(BuildContext context) {
    var data = [
      time("Şakşuka", 20),
      time("Yeşil Mercimek Salatası", 25),
      time("Piyaz", 40),
      time("Mercimek Köftesi", 60),
      time("Yağlı Kırmızı Biber", 120),
      time("Pizza", 25),
    ];

    var series =[
      charts.Series(
          domainFn: (time kisi,_)=>kisi.yemek,
          measureFn: (time kisi,_)=>kisi.sure,
          id: 'Sales',
          data: data
      )
    ];

    var chart = charts.BarChart(
      series,
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Yemek Pişme Süreleri (dk)'),),
      body: chart,
    );
  }
}

class time {
  final String yemek;
  final int sure;

  time(this.yemek, this.sure);
}