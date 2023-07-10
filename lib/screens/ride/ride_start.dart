// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/ride/on_ride.dart';

class RideStartPage extends StatefulWidget {
  const RideStartPage({super.key});

  @override
  _RideStartPageState createState() => _RideStartPageState();
}

class _RideStartPageState extends State<RideStartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 24, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 200),
              Container(
                height: 130,
                width: 380,
                margin: const EdgeInsets.only(
                    top: 6, bottom: 4, right: 20, left: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 3,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '1 hour 28 minutes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'to reach Katunayake',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Container(
                        width: 150,
                        height: 30,
                        margin: const EdgeInsets.fromLTRB(16, 5, 0, 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            color: Color(0xFFF7D302),
                            width: 1.5,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            //
                          },
                          child: const Center(
                            child: Text(
                              'View',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    Container(
                      width: 108,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(height: 25),
                            Text(
                              '44k',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "You've",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "earned",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 108,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Color(0xFFF7D302),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(height: 25),
                            Text(
                              '15',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Completed',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'rides',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 108,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(height: 25),
                            Text(
                              '54',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Ride',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'requests',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 150,
                width: 380,
                margin: const EdgeInsets.only(
                    left: 10, right: 20, top: 0, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 3,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, top: 10, right: 0, bottom: 0),
                      child: const Text("Next trip",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, top: 10, right: 0, bottom: 6),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Kandy             -                Katunayake",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Starts in 1 day 23 hours",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //more info content
                      },
                      child: Container(
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF7D302),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'more info',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 40,
                width: 380,
                margin: const EdgeInsets.only(
                    left: 10, right: 20, top: 0, bottom: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF7D302),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const OnRidePage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Start a trip',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
