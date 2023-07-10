// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/authentication/Driver_screens/driver_register.dart';

class UserProfileTabPage extends StatefulWidget {
  const UserProfileTabPage({Key? key}) : super(key: key);

  @override
  _UserProfileTabPageState createState() => _UserProfileTabPageState();
}

class _UserProfileTabPageState extends State<UserProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 0, right: 12, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AppSettings(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                    )),
              ],
            ),
          ),
          Container(
            height: 96,
            width: 96,
            margin: EdgeInsets.only(bottom: 16),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.person,
                size: 70,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 122,
                width: 170,
                margin: EdgeInsets.only(left: 10, right: 5, top: 0, bottom: 15),
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
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, top: 10, right: 40),
                        child: Text("Personal details",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Container(
                      height: 67,
                      width: 164,
                      margin: EdgeInsets.only(
                          left: 10, top: 0, right: 0, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "RR Martin",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "32 years old",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Matale, Sri Lanka",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Container(
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
                                height: 380,
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Edit personal details',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      height: 224,
                                      width: 396,
                                      padding: EdgeInsets.only(
                                          top: 1,
                                          left: 4,
                                          right: 4,
                                          bottom: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(height: 4),
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
                                          SizedBox(height: 4),
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
                                          SizedBox(height: 4),
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
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
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
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7D302),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 122,
                width: 170,
                margin: EdgeInsets.only(left: 5, right: 10, top: 0, bottom: 15),
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
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 0, bottom: 2),
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 136,
                      margin: EdgeInsets.only(
                          left: 10, top: 0, right: 40, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "0771234567",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "robmartin@gmail.com",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Container(
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
                                height: 300,
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Edit contact details',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      height: 160,
                                      width: 396,
                                      padding: EdgeInsets.only(
                                          top: 1,
                                          left: 4,
                                          right: 4,
                                          bottom: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(height: 4),
                                          SizedBox(
                                            height: 48,
                                            width: 332,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: '0771234567',
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
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          SizedBox(
                                            height: 48,
                                            width: 332,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: 'robmartin@gmail.com',
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
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
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
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7D302),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'edit',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return listViewItem(index);
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 50),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    margin:
                        EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterPageDriver()));
                      },
                      child: Text(
                        'Switch to Driver Mode',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF7D302),
                      ),
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

  Widget listViewItem(int index) {
    return TextButton(
        onPressed: () {
          List<String> routes = [
            '/myaddresses',
            '/mywallet',
            '/paymentmethods',
            '/support',
            '/about',
          ];
          Navigator.pushNamed(context, routes[index]);
        },
        child: Container(
          margin: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 1),
                blurRadius: 3,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 22,
                margin:
                    EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    containerTitle(index),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget containerTitle(int index) {
    double textSize = 16;
    List<String> containerTitles = [
      'My addresses',
      'My wallet',
      'Payment methods',
      'Support',
      'About',
    ];
    return Container(
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: containerTitles[index],
          style: TextStyle(
            fontSize: textSize,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class AppSettings extends StatelessWidget {
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
              "App settings",
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
          SizedBox(height: 12),
          Container(
            height: 70,
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
              children: [
                SizedBox(width: 16),
                Text(
                  'Availability',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'off',
                  style: TextStyle(fontSize: 12),
                ),
                Switch(
                  value: true,
                  onChanged: (bool value) {
                    //switch function
                  },
                  activeColor: Colors.green,
                  activeTrackColor: Colors.grey.shade300,
                  inactiveThumbColor: Colors.black,
                  inactiveTrackColor: Colors.grey.shade300,
                ),
                Text(
                  'on',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 70,
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
              children: [
                SizedBox(width: 16),
                Text(
                  'Availability',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'off',
                  style: TextStyle(fontSize: 12),
                ),
                Switch(
                  value: false,
                  onChanged: (bool value) {
                    //switch function
                  },
                  activeColor: Colors.green,
                  activeTrackColor: Colors.grey.shade300,
                  inactiveThumbColor: Colors.black,
                  inactiveTrackColor: Colors.grey.shade300,
                ),
                Text(
                  'on',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 70,
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
              children: [
                SizedBox(width: 16),
                Text(
                  'Silent mode',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'off',
                  style: TextStyle(fontSize: 12),
                ),
                Switch(
                  value: true,
                  onChanged: (bool value) {
                    //switch function
                  },
                  activeColor: Color(0xFFF7D302),
                  activeTrackColor: Colors.grey.shade300,
                  inactiveThumbColor: Colors.black,
                  inactiveTrackColor: Colors.grey.shade300,
                ),
                Text(
                  'on',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 70,
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
              children: [
                SizedBox(width: 16),
                Text(
                  'Silent mode',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'off',
                  style: TextStyle(fontSize: 12),
                ),
                Switch(
                  value: false,
                  onChanged: (bool value) {
                    //switch function
                  },
                  activeColor: Color(0xFFF7D302),
                  activeTrackColor: Colors.grey.shade300,
                  inactiveThumbColor: Colors.black,
                  inactiveTrackColor: Colors.grey.shade300,
                ),
                Text(
                  'on',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 70,
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
              children: [
                SizedBox(width: 16),
                Text(
                  'Verification status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Container(
                  width: 100,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Not Verified',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 70,
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
              children: [
                SizedBox(width: 16),
                Text(
                  'Verification status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Container(
                  width: 100,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Verified',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
