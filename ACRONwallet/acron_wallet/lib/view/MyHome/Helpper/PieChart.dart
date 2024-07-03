import 'package:acron_wallet/const/lists.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartScreen extends StatelessWidget {
  const PieChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PieChartWidget(),
        ),
      ),
    );
  }
}

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: showingSections(context),
        borderData: FlBorderData(
          show: true,
        ),
        sectionsSpace: 0,
        centerSpaceRadius: 0,
      ),
    );
  }

  List<PieChartSectionData> showingSections(context) {
    const List<double> values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10,];
    Size size = MediaQuery.of(context).size;

    return List.generate(values.length, (i) {
      const fontSize = 15.0;
      return PieChartSectionData(
        color: listcolor[i],
        value: values[i],
        title: "${(values[i]).toStringAsFixed(1)}",
        radius: size.width * 0.85 / 2,
        titleStyle: const TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.normal,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      );
    });
  }
}
