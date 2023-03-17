// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_winged/controller/signup_controller.dart';
import 'package:flutter_winged/models/card_model.dart';
import 'package:get/get.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
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
                      height: 280,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Add a new card',
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
                            height: 150,
                            width: 396,
                            padding: EdgeInsets.only(left: 4, right: 4),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(height: 20),
                                SizedBox(
                                  height: 48,
                                  width: 332,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'card number',
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
                                SizedBox(height: 5),
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: 48,
                                        width: 155,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'exp date',
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
                                        height: 48,
                                        width: 155,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'svc',
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
                                final card = CardModel(
                                  userId: '',
                                  cardNo: '',
                                  cardExpiry: '',
                                  cardType: '',
                                  created: '',
                                  updated: '',
                                  deleted: '',
                                );
                                SignUpController.instance.addCard(card);
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Add card',
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
                          'Add a new card',
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
            height: 100,
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
                SizedBox(height: 24),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    '**** **** **** 3456',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'last used: 2 weeks ago',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 100,
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
                SizedBox(height: 24),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    '**** **** **** 3456',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'last used: 2 weeks ago',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
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
