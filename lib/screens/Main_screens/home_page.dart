// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/chats_tab.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/home_tab.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/mytrips_tab.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/notification_tab.dart';

import '../Navigation_tabs_user/profile/profile_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          UserMyTripsTabPage(),
          UserChatTabPage(),
          UserHomeTabPage(),
          UserNotificationTabPage(),
          UserProfileTabPage(),
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
