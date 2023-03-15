// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride2.dart';
import 'package:flutter_winged/screens/Start_a_trip/start_trip1.dart';
import 'package:flutter_winged/screens/Start_a_trip/start_trip2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_place/google_place.dart';

class StartTripPage3 extends StatefulWidget {
  final DetailsResult? startPosition;
  final DetailsResult? endPosition;

  String pickup, destination;
  StartTripPage3(
      {Key? key,
      required this.pickup,
      required this.destination,
      this.startPosition,
      this.endPosition})
      : super(key: key);

  @override
  _StartTripPage3State createState() => _StartTripPage3State();
}

class _StartTripPage3State extends State<StartTripPage3> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Start a trip',
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
                  MaterialPageRoute(builder: (context) => StartTripPage()));
            },
          ),
        ),
      ),
      body: Column(
        children: [
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
