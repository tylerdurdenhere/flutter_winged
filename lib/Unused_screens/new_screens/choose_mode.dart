// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, library_private_types_in_public_api, unused_import, prefer_final_fields, avoid_unnecessary_containers, unnecessary_string_interpolations, unused_local_variable, prefer_interpolation_to_compose_strings, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPageDriver extends StatefulWidget {
  const RegisterPageDriver({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPageDriver> {  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
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
                        padding: EdgeInsetsDirectional.fromSTEB(5, 30, 0, 0),
                        child: Text(
                          'Choose how do you want to join with us.',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF0F1113),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 50, 15, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,                    
                          children: [ 
                            SizedBox(
                              height: 48,
                              width: 332,
                              child: ElevatedButton(
                                onPressed: () {
                                  
                                },
                                child: Text(
                                  'As Driver',
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
                            SizedBox(height: 20),
                            SizedBox(
                              height: 48,
                              width: 332,
                              child: ElevatedButton(
                                onPressed: () {
                                  
                                },
                                child: Text(
                                  'As Passenger',
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
                          ]                    
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