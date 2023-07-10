// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, library_private_types_in_public_api, unused_import, prefer_final_fields, avoid_unnecessary_containers, unnecessary_string_interpolations, unused_local_variable, prefer_interpolation_to_compose_strings, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../User_screens/login_page.dart';
import '../User_screens/verify_page.dart';

class RegisterPageDriver extends StatefulWidget {
  const RegisterPageDriver({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPageDriver> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();

  @override
  void dispose() {
    _namecontroller.dispose();
    _phonecontroller.dispose();
    super.dispose();
  }

  Future signUp() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${countrycode.text + phone}',
      verificationCompleted: (PhoneAuthCredential credential) {
        showSnackBar(context, "Verification Completed");
      },
      verificationFailed: (FirebaseAuthException e) {
        showSnackBar(context, e.toString());
      },
      codeSent: (String verificationId, int? resendToken) {
        LoginPage.verify = verificationId;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => VerifyPage(phone)));
        showSnackBar(context, "Verification Code Sent");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  var phone = "";

  validateForm() {
    if (_namecontroller.text.length < 3) {
      Fluttertoast.showToast(msg: "Name must me more than 3 Characters");
    } else if (_phonecontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Phone number is required");
    }
  }

  @override
  void initState() {
    countrycode.text = "+94";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                        height: 25,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '   Enter your name',
                          ),
                          keyboardType: TextInputType.text,
                          controller: _namecontroller,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: TextField(
                          onChanged: (value) {
                            phone = value;
                          },
                          decoration: InputDecoration(
                            hintText: '   Enter mobile number',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                '+94  ',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ),
                          ),
                          maxLength: 10,
                          keyboardType: TextInputType.phone,
                          controller: _phonecontroller,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NextPage()),
                            );
                          },
                          child: Text(
                            'Next',
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
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: SelectionArea(
                      child: Text(
                    'Have an account?',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            'Login',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade700,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
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
      ),
    );
  }

  void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _passportcontroller = TextEditingController();

  var defaultText = TextStyle(color: Colors.black);
  var linkText = TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
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
                      SizedBox(height: 280),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Text(
                          'Verify yourself as',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF0F1113),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'a driver',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF0F1113),
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'step 1 of 3',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF0F1113),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
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
                        height: 10,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '   Enter your address',
                          ),
                          keyboardType: TextInputType.text,
                          controller: _addresscontroller,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '   Upload your NIC / Passport',
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
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 12),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 48,
                          width: 332,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => addPersonalDetails()),
                              );
                            },
                            child: Text(
                              'Submit & Next',
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

class addPersonalDetails extends StatefulWidget {
  const addPersonalDetails({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _addPersonalDetailsState createState() => _addPersonalDetailsState();
}

class _addPersonalDetailsState extends State<addPersonalDetails> {
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _passportcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      SizedBox(height: 300),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Add personal details',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF0F1113),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'step 2 of 3',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF0F1113),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
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
                            fontSize: 14,
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
                            fontSize: 14,
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
                            hintText: 'Upload your photo',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.arrow_drop_up_outlined),
                              onPressed: () {},
                            ),
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
                            fontSize: 14,
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => addVehicle()),
                              );
                            },
                            child: Text(
                              'Submit & Next',
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
                      ]),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 30, 0),
                  child: SelectionArea(
                    child: RichText(
                      text: TextSpan(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                              style: TextStyle(color: Colors.black),
                              text:
                                  "Note : You can't offer/start trips until you verify yourself."),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class addVehicle extends StatefulWidget {
  const addVehicle({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _addVehicleState createState() => _addVehicleState();
}

class _addVehicleState extends State<addVehicle> {
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _passportcontroller = TextEditingController();

  var defaultText = TextStyle(color: Colors.black);
  var linkText = TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: 100),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Add a vehicle',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF0F1113),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'step 3 of 3',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF0F1113),
                              fontSize: 12,
                            ),
                          ),
                        ],
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
                            fontSize: 14,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: true,
                              onChanged: (bool value) {
                                //switch function
                              },
                              activeColor: Color(0xFFF7D302),
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
                                            fontSize: 12,
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
                                            fontSize: 12,
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
                  padding: EdgeInsetsDirectional.fromSTEB(50, 15, 30, 0),
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
                  padding: EdgeInsetsDirectional.fromSTEB(30, 15, 30, 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 48,
                        width: 332,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Allset()),
                            );
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
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 30, 0),
                  child: SelectionArea(
                    child: RichText(
                      text: TextSpan(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                              style: defaultText,
                              text:
                                  "Note : You can't offer/start trips until you verify yourself."),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Allset extends StatefulWidget {
  const Allset({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _AllsetState createState() => _AllsetState();
}

class _AllsetState extends State<Allset> {
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _passportcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {},
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
