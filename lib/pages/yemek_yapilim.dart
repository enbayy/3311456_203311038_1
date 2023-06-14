import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class YemekYapilim extends StatelessWidget {
  Map<String, double> dataMap = {
    "Kuru Fasulye": 28,
    "Patlıcan Kebabı": 19,
    "Köfte": 38,
    "İslim Kebabı": 12,
    "Zülbiye": 8,
    "Yaprak Sarması": 15,
  };
  YemekYapilim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yemek Yapılım'),
      centerTitle: true,
      backgroundColor: Colors.green,
      ),
      body: Center(
        child: PieChart(dataMap: dataMap,chartRadius: MediaQuery.of(context).size.width / 1.1,
          legendOptions: const LegendOptions(
            legendPosition: LegendPosition.bottom,
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValuesInPercentage: true,
          ),
        ),
      ),

    );
  }
}