// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MyAddresses extends StatelessWidget {
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
              "My addresses",
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
                      height: 440,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Add an address',
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
                            height: 290,
                            width: 396,
                            padding:
                                EdgeInsets.only(left: 4, right: 4, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: 16),
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 01',
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
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 02',
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
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 03',
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
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 04',
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
                                SizedBox(height: 16),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // code to save changes
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Add address',
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
                          'Add a new address',
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
            height: 200.0,
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
                SizedBox(height: 18),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Home',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('No.123/223A,'),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('Main street, Kandy road,'),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('Kurunegala.'),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('211323'),
                      ),
                    ],
                  ),
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
                          height: 440,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Edit address',
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
                                height: 290,
                                width: 396,
                                padding: EdgeInsets.only(
                                    left: 4, right: 4, bottom: 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(height: 16),
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'No.123/223A',
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
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Main street, Kandy road',
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
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Kurunegala',
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
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: '211323',
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
                                    SizedBox(height: 16),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
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
                            color: Colors.yellow,
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
                      height: 440,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Add an address',
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
                            height: 290,
                            width: 396,
                            padding:
                                EdgeInsets.only(left: 4, right: 4, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: 16),
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 01',
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
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 02',
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
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 03',
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
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'address line 04',
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
                                SizedBox(height: 16),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // code to save changes
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Add address',
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
                          'Add a new address',
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
            height: 200.0,
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
                SizedBox(height: 18),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Home',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('No.123/223A,'),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('Main street, Kandy road,'),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('Kurunegala.'),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text('211323'),
                      ),
                    ],
                  ),
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
                          height: 440,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Edit address',
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
                                height: 290,
                                width: 396,
                                padding: EdgeInsets.only(
                                    left: 4, right: 4, bottom: 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(height: 16),
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'No.123/223A',
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
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Main street, Kandy road',
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
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Kurunegala',
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
                                    SizedBox(
                                      height: 48,
                                      width: 332,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: '211323',
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
                                    SizedBox(height: 16),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
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
                            color: Colors.yellow,
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
