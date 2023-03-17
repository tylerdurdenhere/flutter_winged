// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, must_be_immutable, sort_child_properties_last, avoid_function_literals_in_foreach_calls, sized_box_for_whitespace

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride.dart';
import 'package:flutter_winged/Unused_screens/Offer_ride/offer_ride.dart';
import 'package:flutter_winged/screens/Start_a_trip/start_trip3.dart';
import 'package:flutter_winged/models/checkbox_state.dart';
import 'package:flutter_winged/Unused_screens/vehicle_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_place/google_place.dart';

class OfferRidePage2 extends StatefulWidget {
  final DetailsResult? startPosition;
  final DetailsResult? endPosition;

  String pickup, destination;
  OfferRidePage2(
      {Key? key,
      required this.pickup,
      required this.destination,
      this.startPosition,
      this.endPosition})
      : super(key: key);

  @override
  _OfferRidePage2State createState() => _OfferRidePage2State();
}

class _OfferRidePage2State extends State<OfferRidePage2> {
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

  final allPreferences = CheckBoxState(title: 'Preferences');

  final preferences = [
    CheckBoxState(title: 'Pets allowed'),
    CheckBoxState(title: 'Women only'),
    CheckBoxState(title: 'Smoking in the car'),
  ];

  List<VehicleModel> item = [
    VehicleModel('assets/car4.png', 'Benz CLK300'),
    VehicleModel('assets/car2.png', 'BMW i3'),
    VehicleModel('assets/car3.png', 'Tesla X'),
    VehicleModel('assets/car4.png', 'MAZDA Rx7'),
    VehicleModel('assets/car5.png', 'Lancer EVO'),
  ];

  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count == 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Offer a ride',
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
                  MaterialPageRoute(builder: (context) => OfferRidePage()));
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                height: 800,
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
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 30),
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView(
                        padding: EdgeInsets.all(1),
                        children: [
                          buildGroupCheckbox(allPreferences),
                          Divider(color: Colors.grey),
                          ...preferences.map(buildSingleCheckbox).toList(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'Choose vehicle',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 25, 0),
                      child: Container(
                        height: 150,
                        child: ListView.separated(
                          padding: EdgeInsets.all(10),
                          scrollDirection: Axis.horizontal,
                          itemCount: item.length,
                          separatorBuilder: (context, _) => SizedBox(width: 5),
                          itemBuilder: (context, index) =>
                              buildCard(item: item[index]),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Seats',
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                            child: FloatingActionButton(
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: _incrementCount,
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),
                          ),
                          Text(
                            '${_count}',
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: FloatingActionButton(
                              heroTag: 'Add1',
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              onPressed: _decrementCount,
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => StartTripPage3(
                                      destination: '',
                                      pickup: '',
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'Post ride',
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
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget buildCard({
    required VehicleModel item,
  }) =>
      Container(
        width: 150,
        child: Column(
          children: [
            Expanded(
                child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            )),
            const SizedBox(height: 4),
            Text(
              item.title,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      );

  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.black,
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        onChanged: (value) => setState(() {
          checkbox.value = value!;
          allPreferences.value =
              preferences.every((preference) => preference.value);
        }),
      );

  Widget buildGroupCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.black,
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        onChanged: toggleGroupCheckbox,
      );

  void toggleGroupCheckbox(bool? value) {
    if (value == null) return;

    setState(() {
      allPreferences.value = value;
      preferences.forEach((prefernce) => prefernce.value = value);
    });
  }
}
