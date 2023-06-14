import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Hamur_sureleri extends StatefulWidget {

  @override
  _Hamur_sureleriState createState() => _Hamur_sureleriState();
}

class _Hamur_sureleriState extends State<Hamur_sureleri> {
  @override
  Widget build(BuildContext context) {
    var data = [
      time("Haşhaşlı Çörek", 40),
      time("Peynirli Börek", 90),
      time("Ispanaklı Pasta", 35),
      time("Gelin Çantası", 25),
      time("Çörek Otlu Kurabiye", 30),
      time("Pamuk Poğaça", 30),
      time("Elmalı Kurabiye", 25),
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
      domainAxis: const charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Pişme Süreleri (dk)'),),
      body: chart,
    );
  }
}

class time {
  final String yemek;
  final int sure;

  time(this.yemek, this.sure);
}