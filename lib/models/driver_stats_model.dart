import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DriverStats {
  final DateTime dateTime;
  final int index;
  final int trips;
  charts.Color? barColor;

  DriverStats({
    required this.dateTime,
    required this.index,
    required this.trips,
    this.barColor,
  }) {
    barColor = charts.ColorUtil.fromDartColor(Colors.black);
  }

  static final List<DriverStats> data = [
    DriverStats(
      dateTime: DateTime.now(),
      index: 0,
      trips: 5,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 1,
      trips: 2,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 2,
      trips: 3,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 3,
      trips: 7,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 4,
      trips: 4,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 5,
      trips: 1,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 6,
      trips: 9,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 7,
      trips: 5,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 8,
      trips: 8,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 9,
      trips: 6,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 10,
      trips: 2,
    ),
    DriverStats(
      dateTime: DateTime.now(),
      index: 11,
      trips: 12,
    )
  ];
}
