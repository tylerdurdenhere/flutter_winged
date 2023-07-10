// ignore_for_file: library_private_types_in_public_api, unused_import, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyVehicles extends StatelessWidget {
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
              "My vehicles",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(width: 80),
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
                      height: 560,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Add a vehicle',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 320,
                            width: 396,
                            padding:
                                EdgeInsets.only(left: 4, right: 4, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: 16),
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
                                SizedBox(height: 10),
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          textAlignVertical:
                                              TextAlignVertical.bottom,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.grey.shade700,
                                          ),
                                          maxLines: 1,
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                      SizedBox(width: 20.5),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          textAlignVertical:
                                              TextAlignVertical.bottom,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.grey.shade700,
                                          ),
                                          maxLines: 1,
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 45,
                                        width: 155,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Seats',
                                            filled: true,
                                            fillColor: Colors.grey.shade200,
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          textAlignVertical:
                                              TextAlignVertical.bottom,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.grey.shade700,
                                          ),
                                          maxLines: 1,
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                      SizedBox(width: 20.5),
                                      SizedBox(
                                        height: 45,
                                        width: 155,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Max luggage',
                                            filled: true,
                                            fillColor: Colors.grey.shade200,
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          textAlignVertical:
                                              TextAlignVertical.bottom,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.grey.shade700,
                                          ),
                                          maxLines: 1,
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 45,
                                  width: 332,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                        activeColor: Color(0xFFF7D302),
                                        activeTrackColor: Colors.black54,
                                        inactiveThumbColor: Colors.black,
                                        inactiveTrackColor: Colors.black54,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 60,
                                        width: 165.25,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    left: Radius.circular(12)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
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
                                        height: 65,
                                        width: 165.25,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    right: Radius.circular(12)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
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
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7D302),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // code to save changes
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Add vehicle',
                                style: TextStyle(
                                    fontSize: 17.3,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
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
                          'Add a new vehicle',
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
          SizedBox(height: 12),
          Container(
            height: 230.0,
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
                SizedBox(height: 14),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    Container(
                      width: 130,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/car.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(height: 6),
                          Text('Mustang 1969'),
                          SizedBox(height: 6),
                          Text('Vehicle number : CP-1003'),
                          SizedBox(height: 6),
                          Text('Seats : 3'),
                          SizedBox(height: 6),
                          Text('Max luggage : 3'),
                          SizedBox(height: 6),
                          Text('Color: Black'),
                          SizedBox(height: 6),
                          Text('A/C : Yes'),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
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
                          height: 560,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Edit vehicle',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                height: 320,
                                width: 396,
                                padding: EdgeInsets.only(
                                    left: 4, right: 4, bottom: 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(height: 16),
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
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                        ),
                                        maxLines: 1,
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
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
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 20.5),
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
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          SizedBox(
                                            height: 45,
                                            width: 155,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: 'Seats',
                                                filled: true,
                                                fillColor: Colors.grey.shade200,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 20.5),
                                          SizedBox(
                                            height: 45,
                                            width: 155,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: 'Max luggage',
                                                filled: true,
                                                fillColor: Colors.grey.shade200,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 45,
                                      width: 332,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            activeColor: Color(0xFFF7D302),
                                            activeTrackColor: Colors.black54,
                                            inactiveThumbColor: Colors.black,
                                            inactiveTrackColor: Colors.black54,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          SizedBox(
                                            height: 60,
                                            width: 165.25,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left: Radius.circular(
                                                            12)),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      'Add photo',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors
                                                            .grey.shade700,
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      // Add image
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          Colors.grey.shade700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 65,
                                            width: 165.25,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        right: Radius.circular(
                                                            12)),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      'Add photo',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors
                                                            .grey.shade700,
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      // Add image
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          Colors.grey.shade700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7D302),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // code to save changes
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Save changes',
                                    style: TextStyle(
                                        fontSize: 17.3,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
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
                            color: Color(0xFFF7D302),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(6)),
                          ),
                          child: Center(
                            child: Text(
                              'edit',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 55,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[350],
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(6)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.delete_rounded,
                                      color: Colors.black, size: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 230.0,
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
                SizedBox(height: 14),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    Container(
                      width: 130,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/car.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(height: 6),
                          Text('Mustang 1969'),
                          SizedBox(height: 6),
                          Text('Vehicle number : CP-1003'),
                          SizedBox(height: 6),
                          Text('Seats : 3'),
                          SizedBox(height: 6),
                          Text('Max luggage : 3'),
                          SizedBox(height: 6),
                          Text('Color: Black'),
                          SizedBox(height: 6),
                          Text('A/C : Yes'),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
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
                          height: 560,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Edit vehicle',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                height: 320,
                                width: 396,
                                padding: EdgeInsets.only(
                                    left: 4, right: 4, bottom: 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(height: 16),
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
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                        ),
                                        maxLines: 1,
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
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
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 20.5),
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
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          SizedBox(
                                            height: 45,
                                            width: 155,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: 'Seats',
                                                filled: true,
                                                fillColor: Colors.grey.shade200,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 20.5),
                                          SizedBox(
                                            height: 45,
                                            width: 155,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: 'Max luggage',
                                                filled: true,
                                                fillColor: Colors.grey.shade200,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade700,
                                              ),
                                              maxLines: 1,
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 45,
                                      width: 332,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            activeColor: Color(0xFFF7D302),
                                            activeTrackColor: Colors.black54,
                                            inactiveThumbColor: Colors.black,
                                            inactiveTrackColor: Colors.black54,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          SizedBox(
                                            height: 60,
                                            width: 165.25,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left: Radius.circular(
                                                            12)),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      'Add photo',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors
                                                            .grey.shade700,
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      // Add image
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          Colors.grey.shade700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 65,
                                            width: 165.25,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        right: Radius.circular(
                                                            12)),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      'Add photo',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors
                                                            .grey.shade700,
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      // Add image
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          Colors.grey.shade700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7D302),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // code to save changes
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Save changes',
                                    style: TextStyle(
                                        fontSize: 17.3,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
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
                            color: Color(0xFFF7D302),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(6)),
                          ),
                          child: Center(
                            child: Text(
                              'edit',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 55,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[350],
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(6)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.delete_rounded,
                                      color: Colors.black, size: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
