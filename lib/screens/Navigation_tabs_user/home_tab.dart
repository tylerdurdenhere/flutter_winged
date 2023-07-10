// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserHomeTabPage extends StatefulWidget {
  const UserHomeTabPage({super.key});

  @override
  _UserHomeTabPageState createState() => _UserHomeTabPageState();
}

class _UserHomeTabPageState extends State<UserHomeTabPage> {
  static final CameraPosition _lanka = CameraPosition(
    target: LatLng(7.8731, 80.771),
    zoom: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _lanka,
            mapType: MapType.normal,
            zoomControlsEnabled: false,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 670, 24, 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 70, 22, 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindRidePage(),
                                  fullscreenDialog: true),
                            );
                          },
                          child: Text(
                            "Find a ride",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(247, 211, 2, 0.75),
                            elevation: 0,
                            foregroundColor: Color.fromRGBO(247, 211, 2, 0.75),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 600, 24, 0),
            child: Stack(
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
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
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(247, 211, 2, 0.75),
                            elevation: 0,
                            foregroundColor: Color.fromRGBO(247, 211, 2, 0.75),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
