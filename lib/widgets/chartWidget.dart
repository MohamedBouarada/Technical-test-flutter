import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartWidget extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;
  final bool displayDomainAxis;
  ChartWidget(this.seriesList, {required this.animate , required this.displayDomainAxis});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: charts.BarChart(
        seriesList,
        animate: animate,
        domainAxis: const charts.OrdinalAxisSpec(
          // Render only the domain axis (horizontal axis)
          renderSpec: charts.NoneRenderSpec(),
        ),
        primaryMeasureAxis: const charts.NumericAxisSpec(
          // Hide the primary measure axis (vertical axis)
          showAxisLine: false,
          renderSpec: charts.NoneRenderSpec(),
        ),
      ),
    );
  }
}

class SeriesData {
  final String category;
  final int value;

  SeriesData(this.category, this.value);
}
