import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class YemekSureleri extends StatefulWidget {

  @override
  _YemekSureleriState createState() => _YemekSureleriState();
}

class _YemekSureleriState extends State<YemekSureleri> {
  @override
  Widget build(BuildContext context) {
    var data = [
      time("Kuru Fasulye", 60),
      time("Patlıcan Kebabı", 60),
      time("Kofte", 35),
      time("İslim Kebabı", 30),
      time("Zülbiye", 90),
      time("Yaprak Sarması", 35),
      time("Fırında Tavuk", 50),
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