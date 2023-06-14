import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class TatliYapilim extends StatelessWidget {
  Map<String, double> dataMap = {
    "Güllaç": 15,
    "Kazandibi": 18,
    "Haşhaşlı Revani": 27,
    "Ayva Tatlısı": 12,
    "Balparmak": 30,
    "Dilber Dudağı": 21,
  };
  TatliYapilim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tatlı Yapılım'),
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