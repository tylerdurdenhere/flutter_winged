// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, library_private_types_in_public_api, unused_import, prefer_final_fields, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winged/Unused_screens/Driver_screens/driver_register.dart';
import 'package:flutter_winged/screens/authentication/Driver_screens/driver_register.dart';
import 'package:flutter_winged/screens/authentication/Driver_screens/driver_verify_page.dart';
import 'package:flutter_winged/screens/authentication/User_screens/register_page.dart';
import 'package:flutter_winged/screens/authentication/User_screens/verify_page.dart';
import 'package:google_fonts/google_fonts.dart';

class DriverLogin extends StatefulWidget {
  const DriverLogin({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _DriverLoginState createState() => _DriverLoginState();
}

class _DriverLoginState extends State<DriverLogin> {
  TextEditingController countrycode = TextEditingController();
  var phone = "";
  final User? driver = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    countrycode.text = "+94";
    super.initState();
  }

  TextEditingController _phonecontroller = TextEditingController();

  @override
  void dispose() {
    _phonecontroller.dispose();
    super.dispose();
  }

  Future signIn() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${countrycode.text + phone}',
      verificationCompleted: (PhoneAuthCredential credential) {
        showSnackBar(context, "Verification Completed");
      },
      verificationFailed: (FirebaseAuthException e) {
        showSnackBar(context, e.toString());
      },
      codeSent: (String verificationId, int? resendToken) {
        DriverLogin.verify = verificationId;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DriverVerifyPage(phone)));
        showSnackBar(context, "Verification Code Sent");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 80, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Image.asset(
                          "assets/WingedLogo.png",
                          width: 380,
                          height: 202,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 10),
                        child: Text(
                          'Login as a Driver',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF0F1113),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Login with your mobile number. \nResume from where you’ve left off. ',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Container(
                          decoration: BoxDecoration(),
                        ),
                      ),
                      Container(
                        child: TextField(
                          onChanged: (value) {
                            phone = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter mobile number',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 4),
                              child: Text(
                                '+94',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500, fontSize: 14),
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
                  padding: EdgeInsetsDirectional.fromSTEB(30, 12, 30, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () async {
                            final User? driver =
                                FirebaseAuth.instance.currentUser;
                            if (driver == null) {
                              showSnackBar(context, "User not found");
                              return;
                            } else {
                              signIn();
                            }
                          },
                          child: Text(
                            'Login',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: SelectionArea(
                    child: Text(
                      'OR',
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
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
                                    builder: (context) =>
                                        RegisterPageDriver()));
                          },
                          child: Text(
                            'Register',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(146, 24, 27, 35)),
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
