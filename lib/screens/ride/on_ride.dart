import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/ride/ride_complete.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OnRidePage extends StatefulWidget {
  const OnRidePage({super.key});

  @override
  _OnRidePageState createState() => _OnRidePageState();
}

class _OnRidePageState extends State<OnRidePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 150,
          leading: Padding(
            padding: EdgeInsets.all(12),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_rounded,
                    size: 15, color: Colors.white),
              ),
            ),
          ),
          title: Row(
            children: [
              Spacer(),
              Container(
                width: 100,
                height: 40,
                child: Image.asset('assets/winged-logo-black.png'),
              ),
              SizedBox(width: 0)
            ],
          ),
        ),
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(7.291870, 80.637508),
                zoom: 11,
              ),
              myLocationButtonEnabled: false,
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                //
              },
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Container(
                            height: 140,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12)),
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
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'to reach Katunayake',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF7D302),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          // pickup function
                                        },
                                        child: const Text(
                                          'Pick up',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Color(0xFFF7D302),
                                          width: 2,
                                        ),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RideCompletePage(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Drop off',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                  ],
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
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
