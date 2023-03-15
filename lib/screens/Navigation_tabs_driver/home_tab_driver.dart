// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Start_a_trip/start_trip1.dart';
import 'package:flutter_winged/models/driver_stats_model.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:google_fonts/google_fonts.dart';

class DriverHomeTabPage extends StatefulWidget {
  const DriverHomeTabPage({super.key});

  @override
  _DriverHomeTabPageState createState() => _DriverHomeTabPageState();
}

class _DriverHomeTabPageState extends State<DriverHomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 8, 12, 8),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Last 30 days',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 250,
              padding: const EdgeInsets.all(10),
              child: CustomBarChart(
                driverStats: DriverStats.data,
              )),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 110,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(117, 255, 139, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.payments,
                        color: Color(0xFF0F1113),
                        size: 44,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                        child: Text(
                          '\$320k',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 110,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 211, 2, 0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.payments,
                        color: Color(0xFF0F1113),
                        size: 44,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                        child: Text(
                          '\$320k',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.payments,
                        color: Color(0xFF0F1113),
                        size: 44,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                        child: Text(
                          '\$320k',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
            child: Stack(
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[100],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 88, 0, 0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "more info >",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.1,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(247, 211, 2, 0.5),
                            elevation: 0,
                            foregroundColor: Color.fromRGBO(247, 211, 2, 0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartTripPage(),
                            fullscreenDialog: true),
                      );
                    },
                    child: Text(
                      'Start a trip',
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: Color(0xFFF7D302)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({
    Key? key,
    required this.driverStats,
  }) : super(key: key);

  final List<DriverStats> driverStats;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DriverStats, String>> series = [
      charts.Series(
        id: 'trips',
        data: driverStats,
        domainFn: (series, _) => series.index.toString(),
        measureFn: (series, _) => series.trips,
        colorFn: (series, _) => series.barColor!,
      )
    ];
    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
