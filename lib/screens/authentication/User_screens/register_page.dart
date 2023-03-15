// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, library_private_types_in_public_api, unused_import, prefer_final_fields, avoid_unnecessary_containers, unnecessary_string_interpolations, unused_local_variable, prefer_interpolation_to_compose_strings, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/authentication/User_screens/login_page.dart';
import 'package:flutter_winged/screens/authentication/User_screens/verify_page.dart';
import 'package:flutter_winged/controller/signup_controller.dart';
import 'package:flutter_winged/models/user_model.dart';
import 'package:flutter_winged/repository/user_repository/user_repository.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static String verify = "";

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();

  final FirebaseAuth fAuth = FirebaseAuth.instance;
  User? currentFirebaseUser;

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

  var defaultText = TextStyle(color: Colors.black);
  var linkText = TextStyle(color: Colors.blue);

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
    final controller = Get.put(SignUpController());
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
                            hintText: 'Enter your name',
                          ),
                          keyboardType: TextInputType.text,
                          controller: _namecontroller,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        child: TextField(
                          onChanged: (value) {
                            phone = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter mobile number',
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
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: SelectionArea(
                      child: RichText(
                          text: TextSpan(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                        TextSpan(
                            style: defaultText,
                            text: "By clicking register i agree to the"),
                        TextSpan(style: linkText, text: " Terms and conditions")
                      ]))),
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
                            validateForm();
                            signUp();
                            final newuser = UserModel(
                              fullname: _namecontroller.text.trim(),
                              phoneNo: _phonecontroller.text.trim(),
                              address: '',
                              created: '',
                              deleted: '',
                              driverImage: '',
                              emergencyPhoneNo: '',
                              password: '',
                              postalCode: '',
                              state: '',
                              updated: '',
                              userImage: '',
                              username: '',
                            );
                            SignUpController.instance.createUser(newuser);
                            if (user != null) {
                              Map userMap = {
                                "Id": user!.uid,
                                "FullName": _namecontroller.text.trim(),
                                "Phone": _phonecontroller.text.trim(),
                                "Address": '',
                                "Created": '',
                                "Deleted": '',
                                "DriverImage": '',
                                "DriverLicense": '',
                                "DriverMode": '',
                                "EmergencyPhoneNo": '',
                                "IsDriver": '',
                                "Password": '',
                                "PostalCode": '',
                                "State": '',
                                "Updated": '',
                                "UserImage": '',
                                "Username": '',
                              };

                              DatabaseReference userRef = FirebaseDatabase
                                  .instance
                                  .ref()
                                  .child("users");
                              userRef.child(user!.uid).set(userMap);

                              currentFirebaseUser = user;
                            }
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

final User? user = FirebaseAuth.instance.currentUser;
