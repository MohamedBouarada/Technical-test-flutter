// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:test_technique/widgets/chartWidget.dart';

import 'package:test_technique/widgets/socialMediaActivities.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChildDashboard2 extends StatelessWidget {
  const ChildDashboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Mental State',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(38, 38, 38, 0.86),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ChartWidget(
                generateSeriesData(), // Pass your series data here
                animate: true,
                displayDomainAxis: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SocialMediaActivities(
          title: 'Last social media activites',
          data: [
            {
              "messageTitle": "Rebecca Morgan ",
              "message":
                  "Mama always said life was like a box of chocolates. You never know what…",
              "time": "12:34 PM",
              "image": "assets/user2.png",
            },
            {
              "messageTitle": "Justin Holmes",
              "message":
                  "You don't understand! I coulda had class. I coulda been a contender. I could've…",
              "time": "13:11 PM",
              "image": "assets/user5.png",
            },
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Chart Title',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(38, 38, 38, 0.86),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ChartWidget(
                generateSleepData(), // Pass your series data here
                animate: true,
                displayDomainAxis: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<charts.Series<dynamic, String>> generateSeriesData() {
    final data = [
      SeriesData('13', 15),
      SeriesData('14', 14),
      SeriesData('15', 17),
      SeriesData('16', 30),
      SeriesData('17', 18),
      SeriesData('18', 14),
      SeriesData('19', 20),
      SeriesData('18', 19),
    ];

    return [
      charts.Series<dynamic, String>(
        id: 'Series',
        data: data,
        domainFn: (dynamic series, _) => series.category,
        measureFn: (dynamic series, _) => series.value,
      ),
    ];
  }
  List<charts.Series<dynamic, String>> generateSleepData() {
    final data = [
      SeriesData('1', 11),
      SeriesData('2', 14),
      SeriesData('3', 19),
      SeriesData('4', 35),
      SeriesData('5', 18),
      SeriesData('6', 10),
      SeriesData('7', 20),
      SeriesData('8', 25),
    ];

    return [
      charts.Series<dynamic, String>(
        id: 'Series',
        data: data,
        domainFn: (dynamic series, _) => series.category,
        measureFn: (dynamic series, _) => series.value,
      ),
    ];
  }
}

// Dummy data model for the chart series

