// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon:
                  Icon(Icons.arrow_back_rounded, size: 15, color: Colors.white),
            ),
          ),
        ),
        title: Row(
          children: [
            Text(
              "About",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            width: 350,
            height: 200,
            child: Image.asset('assets/WingedLogo.png'),
          ),
          SizedBox(height: 20),
          Container(
            height: 290,
            width: 380,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(18),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget justo ac lacus auctor malesuada vel in mauris. Maecenas non bibendum libero. Vivamus lacinia enim ac risus fermentum, sit amet viverra enim bibendum. Aenean volutpat euismod nulla, ac aliquam nibh. Fusce viverra aliquam tellus ut blandit. Donec vel tellus quis nulla consequat blandit. Nam ullamcorper risus id nisl porttitor, ac bibendum nulla vestibulum.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 90),
          Container(
            height: 48,
            width: 380,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 16),
                Text(
                  'All rights reserved',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      'R',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
