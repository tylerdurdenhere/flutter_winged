// ignore_for_file: library_private_types_in_public_api, avoid_returning_null_for_void, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DriverNotificationTabPage extends StatefulWidget {
  const DriverNotificationTabPage({super.key});

  @override
  _DriverNotificationTabPageState createState() =>
      _DriverNotificationTabPageState();
}

class _DriverNotificationTabPageState extends State<DriverNotificationTabPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: RefreshIndicator(
          onRefresh: () async {
            // perform the refresh logic here
            return null;
          },
          child: Padding(
            padding: EdgeInsets.only(top: 6, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0),
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return listViewItem(index, isRead: false);
                  },
                  itemCount: 10,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listViewItem(int index, {bool isRead = false}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: isRead ? Colors.transparent : Colors.white,
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
          prefixIcon(),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(index),
                timeAndDate(index),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Padding(
      padding: EdgeInsets.only(top: 33.8, left: 15, bottom: 32.3),
      child: Container(
        height: 39.9,
        width: 39.9,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(80, 204, 204, 204),
        ),
        child: Icon(
          Icons.notifications_active_rounded,
          size: 20,
          color: Color.fromARGB(99, 247, 211, 2),
        ),
      ),
    );
  }

  Widget message(int index) {
    double textSize = 16;
    return Container(
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: 'Completed Pre-Test in ',
            style: TextStyle(
              fontSize: textSize,
              color: Colors.black,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                  text: 'Customer Experience 101',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: textSize))
            ]),
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'May 1, 2022',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14.9,
            ),
          ),
        ],
      ),
    );
  }
}
