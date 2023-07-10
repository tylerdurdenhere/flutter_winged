// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Main_screens/home_page.dart';
import 'package:flutter_winged/Unused_screens/Offer_ride/offer_ride2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_place/google_place.dart';

class OfferRidePage extends StatefulWidget {
  const OfferRidePage({super.key});

  @override
  _OfferRidePageState createState() => _OfferRidePageState();
}

class _OfferRidePageState extends State<OfferRidePage> {
  final _pickupSearchFieldController = TextEditingController();
  final _destinationSearchFieldController = TextEditingController();

  DetailsResult? startPosition;
  DetailsResult? endPosition;

  late FocusNode startFocusNode;
  late FocusNode endFocusNode;

  late GooglePlace googlePlace;
  List<AutocompletePrediction> predictions = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    String apiKey = 'AIzaSyCj8OETbPlUl7EDlwDFvInSKlzMGnuLuPM';
    googlePlace = GooglePlace(apiKey);

    startFocusNode = FocusNode();
    endFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    startFocusNode.dispose();
    endFocusNode.dispose();
  }

  void autuCompleteSearch(String value) async {
    var result = await googlePlace.autocomplete.get(value);
    if (result != null && result.predictions != null && mounted) {
      print(result.predictions!.first.description);
      setState(() {
        predictions = result.predictions!;
      });
    }
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
            icon: Icon(Icons.arrow_circle_left),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: TextFormField(
                  controller: _pickupSearchFieldController,
                  onChanged: (value) {
                    if (_debounce?.isActive ?? false) _debounce!.cancel();
                    _debounce = Timer(Duration(milliseconds: 100), () {
                      if (value.isNotEmpty) {
                        autuCompleteSearch(value);
                      } else {
                        setState(() {
                          predictions = [];
                          startPosition = null;
                        });
                      }
                    });
                  },
                  focusNode: startFocusNode,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.search,
                  autofocus: true,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Pickup Location",
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.location_searching_sharp,
                          color: Colors.black,
                        ),
                      ),
                      border: InputBorder.none,
                      suffixIcon: _pickupSearchFieldController.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  predictions = [];
                                  _pickupSearchFieldController.clear();
                                });
                              },
                              icon: Icon(Icons.clear_outlined),
                            )
                          : null),
                ),
              ),
            ),
            Divider(
              height: 4,
              thickness: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.my_location_outlined,
                        color: Colors.blue,
                      ),
                      label: Text("Use my Current Location"),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        fixedSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      label: Text("Choose on map"),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        fixedSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.map_outlined),
                      label: Text("Choose from my address"),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        fixedSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 4,
              thickness: 1,
              color: Colors.grey[200],
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  controller: _destinationSearchFieldController,
                  onChanged: (value) {
                    if (_debounce?.isActive ?? false) _debounce!.cancel();
                    _debounce = Timer(Duration(milliseconds: 1000), () {
                      if (value.isNotEmpty) {
                        autuCompleteSearch(value);
                      } else {
                        setState(() {
                          predictions = [];
                          endPosition = null;
                        });
                      }
                    });
                  },
                  enabled: _pickupSearchFieldController.text.isNotEmpty &&
                      startPosition != null,
                  autofocus: _pickupSearchFieldController.text.isNotEmpty &&
                      startPosition != null,
                  focusNode: endFocusNode,
                  textInputAction: TextInputAction.search,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Destination",
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(Icons.location_searching_sharp),
                      ),
                      border: InputBorder.none,
                      suffixIcon:
                          _destinationSearchFieldController.text.isNotEmpty
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      predictions = [];
                                      _destinationSearchFieldController.clear();
                                    });
                                  },
                                  icon: Icon(Icons.clear_outlined),
                                )
                              : null),
                ),
              ),
            ),
            Divider(
              height: 4,
              thickness: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      label: Text("Choose on map"),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        fixedSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.map_outlined),
                      label: Text("Choose from my address"),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        fixedSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: predictions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.pin_drop,
                        color: Colors.blue,
                      ),
                    ),
                    title: Text(
                      predictions[index].description.toString(),
                    ),
                    onTap: () async {
                      final placeId = predictions[index].placeId!;
                      final details = await googlePlace.details.get(placeId);
                      if (details != null &&
                          details.result != null &&
                          mounted) {
                        if (startFocusNode.hasFocus) {
                          setState(() {
                            startPosition = details.result;
                            _pickupSearchFieldController.text =
                                details.result!.name!;
                            predictions = [];
                          });
                        } else {
                          setState(() {
                            endPosition = details.result;
                            _destinationSearchFieldController.text =
                                details.result!.name!;
                            predictions = [];
                          });
                        }

                        if (startPosition != null && endPosition != null) {
                          print('navigate');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => OfferRidePage2(
                                startPosition: startPosition,
                                endPosition: endPosition,
                                pickup: _pickupSearchFieldController.text,
                                destination:
                                    _destinationSearchFieldController.text,
                              ),
                            ),
                          );
                        }
                      }
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
