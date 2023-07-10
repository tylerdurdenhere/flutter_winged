// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_final_fields, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/chats_tab_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/home_tab_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/mytrips_tab_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/notification_tab_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/profile/profile_tab_driver.dart';

class HomePageDriver extends StatefulWidget {
  @override
  _HomePageDriverState createState() => _HomePageDriverState();
}

class _HomePageDriverState extends State<HomePageDriver>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 2;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    tabController =
        TabController(length: 5, vsync: this, initialIndex: selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Image.asset("assets/winged-logo-black.png"),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 30, 20),
            child: Container(
              height: 50,
              width: 80,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Switch(
                  value: true,
                  onChanged: (bool value) {
                    //switch function
                  },
                  activeColor: Color.fromRGBO(117, 255, 139, 1),
                  activeTrackColor: Colors.black54,
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.black54,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          DriverMyTripsTabPage(),
          DriverChatTabPage(),
          DriverHomeTabPage(),
          DriverNotificationTabPage(),
          DriverProfileTabPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.route_outlined),
            label: "My trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
        selectedItemColor: Color(0xFFF7D302),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
