import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TatliSureleri extends StatefulWidget {

  @override
  _TatliSureleriState createState() => _TatliSureleriState();
}

class _TatliSureleriState extends State<TatliSureleri> {
  @override
  Widget build(BuildContext context) {
    var data = [
      time("Güllaç", 10),
      time("Kazandibi", 15),
      time("Haşhaşlı Revani", 30),
      time("Ayva Tatlısı", 75),
      time("Balparmak", 25),
      time("Dilber Dudağı", 20),
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
      appBar: AppBar(title: const Text('Tatlı Süreleri (dk)'),),
      body: chart,
    );
  }
}

class time {
  final String yemek;
  final int sure;

  time(this.yemek, this.sure);
}