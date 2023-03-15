// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, must_be_immutable, sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';

import 'map_utils.dart';

class FindRidePage2 extends StatefulWidget {
  final _pickupSearchFieldController = TextEditingController();
  final _destinationSearchFieldController = TextEditingController();

  final DetailsResult? startPosition;
  final DetailsResult? endPosition;

  String pickup, destination;
  FindRidePage2(
      {Key? key,
      required this.pickup,
      required this.destination,
      this.startPosition,
      this.endPosition})
      : super(key: key);

  @override
  _FindRidePage2State createState() => _FindRidePage2State();
}

class _FindRidePage2State extends State<FindRidePage2> {
  late CameraPosition _initialPosition;
  final Completer<GoogleMapController> _controller = Completer();
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();

  @override
  void initState() {
    super.initState();
    _initialPosition = CameraPosition(
      target: LatLng(
        widget.startPosition!.geometry!.location!.lat!,
        widget.startPosition!.geometry!.location!.lng!,
      ),
      zoom: 14.4647,
    );
  }

  DateTime? date;
  TimeOfDay? time;

  String getTime() {
    if (time == null) {
      return 'Time';
    } else {
      final hours = time?.hour.toString().padLeft(2, '0');
      final minutes = time?.minute.toString().padLeft(2, '0');

      return 'Around $hours:$minutes';
    }
  }

  String getDate() {
    if (date == null) {
      return 'Date';
    } else {
      return 'ON ${date!.day}.${date!.month}.${date!.year}';
    }
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 2),
      lastDate: DateTime(DateTime.now().year + 2),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
  }

  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay.now();
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
    );

    if (newTime == null) return;

    setState(() => time = newTime);
  }

  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        'AIzaSyCj8OETbPlUl7EDlwDFvInSKlzMGnuLuPM',
        PointLatLng(
          widget.endPosition!.geometry!.location!.lat!,
          widget.startPosition!.geometry!.location!.lng!,
        ),
        PointLatLng(
          widget.endPosition!.geometry!.location!.lat!,
          widget.startPosition!.geometry!.location!.lng!,
        ),
        travelMode: TravelMode.driving);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }

  @override
  Widget build(BuildContext context) {
    Set<Marker> _markers = {
      Marker(
        markerId: MarkerId('start'),
        position: LatLng(
          widget.startPosition!.geometry!.location!.lat!,
          widget.startPosition!.geometry!.location!.lng!,
        ),
      ),
      Marker(
        markerId: MarkerId('end'),
        position: LatLng(
          widget.endPosition!.geometry!.location!.lat!,
          widget.endPosition!.geometry!.location!.lng!,
        ),
      ),
    };

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Find a ride',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 20, 8),
            child: Image.asset("assets/winged-logo-black.png"),
          )
        ],
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
            iconSize: 40,
            icon: const Icon(Icons.arrow_circle_left),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FindRidePage()));
            },
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            polylines: Set<Polyline>.of(polylines.values),
            initialCameraPosition: _initialPosition,
            mapType: MapType.normal,
            zoomControlsEnabled: true,
            markers: Set.from(_markers),
            onMapCreated: (GoogleMapController controller) {
              Future.delayed(Duration(milliseconds: 2000), () {
                controller.animateCamera(CameraUpdate.newLatLngBounds(
                    MapUtils.boundsFromLatLngList(
                        _markers.map((loc) => loc.position).toList()),
                    1));
                _getPolyline();
              });
            },
          ),
          Container(
            color: Colors.white,
            height: 225,
            width: 400,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 5, 20, 0),
                  child: TextFormField(
                    enabled: false,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: widget.pickup,
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.my_location_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(
                    height: 4,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 0, 20, 0),
                  child: TextFormField(
                    enabled: false,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: widget.destination,
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: () => pickDate(context),
                        color: Colors.grey[300],
                        child: Text(getDate()),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: () => pickTime(context),
                        color: Colors.grey[300],
                        child: Text(getTime()),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FindRidePage3(
                                  destination: '',
                                  pickup: '',
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'Search',
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF7D302),
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
