// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, must_be_immutable, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MyWallet extends StatelessWidget {
  bool _isTopUpSelected = true;
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
              "Payment methods",
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
          SizedBox(height: 16),
          Container(
            height: 200,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Text(
                    'you have a balance of',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(height: 1),
                Center(
                  child: Text(
                    'Rs.3500',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 50),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'last updated: a weeks ago',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 25,
                        width: 60,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '+250rs',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                SizedBox(height: 2),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'last updated: a weeks ago',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 25,
                        width: 60,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '-250rs',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 225,
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isTopUpSelected = false;
                        });
                      },
                      child: Container(
                        width: 179.5,
                        height: 48,
                        decoration: BoxDecoration(
                          color:
                              _isTopUpSelected ? Colors.yellow : Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                          ),
                          border: Border.all(
                            color: Colors.yellow,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Top-Up',
                            style: TextStyle(
                              color: _isTopUpSelected
                                  ? Colors.black
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isTopUpSelected = true;
                        });
                      },
                      child: Container(
                        width: 179,
                        height: 48,
                        decoration: BoxDecoration(
                          color:
                              !_isTopUpSelected ? Colors.yellow : Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                          ),
                          border: Border.all(
                            color: Colors.yellow,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Withdrawal',
                            style: TextStyle(
                              color: !_isTopUpSelected
                                  ? Colors.black
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                _isTopUpSelected
                    ? SizedBox(
                        height: 165,
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-250rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Today',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 70,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-1000rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Sunday',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-500rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Last week',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 70,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-2500rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '20th Sep 2022',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Spacer(),
                                  Text(
                                    'view more',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 165,
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-250rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Today',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 70,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-1000rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Sunday',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-500rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Last week',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 70,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-2500rs',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '20th Sep 2022',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Spacer(),
                                  Text(
                                    'view more',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  SizedBox(width: 12)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 380.0,
            height: 46.0,
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
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Top-up my wallet',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(0, 2),
                                  blurRadius: 3,
                                  spreadRadius: 0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 60,
                            width: 396,
                            padding: EdgeInsets.only(left: 4, right: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(width: 16),
                                Text(
                                  '**** **** **** 3456',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Spacer(),
                                Text(
                                  'change card',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.yellow,
                                    width: 2,
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // code to save changes
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 35,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // code to save changes
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Top-up',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(16, 12, 0, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(6)),
                      ),
                      child: Center(
                        child: Text(
                          'Top-up my wallet',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
