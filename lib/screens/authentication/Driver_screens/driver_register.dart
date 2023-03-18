// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, library_private_types_in_public_api, unused_import, prefer_final_fields, avoid_unnecessary_containers, unnecessary_string_interpolations, unused_local_variable, prefer_interpolation_to_compose_strings, use_build_context_synchronously, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winged/controller/signup_controller.dart';
import 'package:flutter_winged/models/driver_model.dart';
import 'package:flutter_winged/models/vehicle_model.dart';
import 'package:flutter_winged/Unused_screens/vehicle_model.dart';
import 'package:flutter_winged/screens/Main_screens/home_page_driver.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPageDriver extends StatefulWidget {
  const RegisterPageDriver({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _RegisterPageDriverState createState() => _RegisterPageDriverState();
}

class _RegisterPageDriverState extends State<RegisterPageDriver> {
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _passportcontroller = TextEditingController();

  var defaultText = TextStyle(color: Colors.black);
  var linkText = TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    var scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/WingedLogo.png",
                        width: 380,
                        height: 202,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Text(
                          'Register with us',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF0F1113),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Create an account by providing your name and mobile number.',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your address',
                          ),
                          keyboardType: TextInputType.text,
                          controller: _addresscontroller,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Upload your NIC / Passport',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.arrow_drop_up_outlined),
                              onPressed: () {},
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          controller: _passportcontroller,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: SelectionArea(
                    child: RichText(
                      text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            TextSpan(
                                style: defaultText,
                                text: "By clicking register i agree to the"),
                            TextSpan(
                                style: linkText, text: " Terms and conditions")
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            final driver = DriverModel(
                              fullname: '',
                              phoneNo: '',
                              username: '',
                              password: '',
                              address: '',
                              state: '',
                              postalCode: '',
                              emergencyPhoneNo: '',
                              driverLicense: '',
                              driverImage: '',
                              created: '',
                              updated: '',
                              deleted: '',
                            );
                            SignUpController.instance.createDriver(driver);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddPersonalDetails()),
                            );
                          },
                          child: Text(
                            'Register',
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF7D302),
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
      ),
    );
  }
}

class AddPersonalDetails extends StatefulWidget {
  const AddPersonalDetails({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _AddPersonalDetailsState createState() => _AddPersonalDetailsState();
}

class _AddPersonalDetailsState extends State<AddPersonalDetails> {
  TextEditingController _addressController = TextEditingController();
  TextEditingController _passportController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    var scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/WingedLogo.png",
                        width: 380,
                        height: 202,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Tell us about you a bit more!',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF0F1113),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Add personal details',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 48,
                        width: 332,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'RR Martin',
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          textAlignVertical: TextAlignVertical.bottom,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 48,
                        width: 332,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '32 years old',
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          textAlignVertical: TextAlignVertical.bottom,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 48,
                        width: 332,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Matale, Sri Lanka',
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          textAlignVertical: TextAlignVertical.bottom,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 12),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 48,
                          width: 332,
                          child: ElevatedButton(
                            onPressed: () async {},
                            child: Text(
                              'Update',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF7D302),
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddVehicle()),
                            );
                          },
                          child: Text(
                            'Skip for now',
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0.0,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddVehicle extends StatefulWidget {
  const AddVehicle({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  TextEditingController _addressController = TextEditingController();
  TextEditingController _passportController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    var scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Text(
                          'Tell us about you a bit more!',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF0F1113),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Add a vehicle',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 45,
                        width: 332,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Vehicle model',
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          textAlignVertical: TextAlignVertical.bottom,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 45,
                        child: Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                height: 45,
                                width: 155,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Vehicle number',
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  textAlignVertical: TextAlignVertical.bottom,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                  ),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 45,
                                width: 155,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Color',
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  textAlignVertical: TextAlignVertical.bottom,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                  ),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 45,
                        child: Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                height: 45,
                                width: 155,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'seats',
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  textAlignVertical: TextAlignVertical.bottom,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                  ),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 45,
                                width: 155,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'max luggage',
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  textAlignVertical: TextAlignVertical.bottom,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                  ),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 50,
                        width: 332,
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'A/C',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: true,
                              onChanged: (bool value) {
                                //switch function
                              },
                              activeColor: Colors.yellow,
                              activeTrackColor: Colors.black54,
                              inactiveThumbColor: Colors.black,
                              inactiveTrackColor: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 80,
                        child: Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 165.25,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Add photo',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Add image
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                                width: 165.25,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Add photo',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Add image
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 12),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 48,
                          width: 332,
                          child: ElevatedButton(
                            onPressed: () {
                              final vehicle = VehiclesModel(
                                userId: '',
                                vehicleName: '',
                                vehicleNum: '',
                                vehicleInsuranceExpiryDate: '',
                                vehicleInsuranceImage: '',
                                vehicleImage: '',
                              );
                              SignUpController.instance.addVehicle(vehicle);
                            },
                            child: Text(
                              'Update',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF7D302),
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Allset()),
                            );
                          },
                          child: Text(
                            'Skip for now',
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0.0,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class Allset extends StatefulWidget {
  const Allset({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _AllsetState createState() => _AllsetState();
}

class _AllsetState extends State<Allset> {
  TextEditingController _addressController = TextEditingController();
  TextEditingController _passportController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePageDriver()));
        },
        child: Center(
          child: Text(
            'All set to go!',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
