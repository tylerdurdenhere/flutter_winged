// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/about.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/my_addresses.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/my_vehicles.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/my_wallet.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/payment_methods.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/support.dart';
import 'package:flutter_winged/screens/authentication/Driver_screens/driver_login.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride2.dart';
import 'package:flutter_winged/screens/Find_ride/find_ride3.dart';
import 'package:flutter_winged/screens/Main_screens/home_page_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/home_tab_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/home_tab.dart';
import 'package:flutter_winged/screens/Start_a_trip/start_trip1.dart';
import 'package:flutter_winged/screens/Start_a_trip/start_trip2.dart';
import 'package:flutter_winged/screens/Start_a_trip/start_trip3.dart';
import 'package:flutter_winged/screens/permission_screens/addcard_page.dart';
import 'package:flutter_winged/screens/Main_screens/home_page.dart';
import 'package:flutter_winged/screens/permission_screens/location_page.dart';
import 'package:flutter_winged/screens/authentication/User_screens/login_page.dart';
import 'package:flutter_winged/screens/Main_screens/main_page.dart';
import 'package:flutter_winged/screens/Onboard_splash/onboarding_page.dart';
import 'package:flutter_winged/screens/authentication/User_screens/register_page.dart';
import 'package:flutter_winged/screens/Onboard_splash/splash_screen.dart';
import 'package:flutter_winged/screens/authentication/User_screens/verify_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Winged',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        '/myVehicles': (context) => MyVehicles(),
        '/myaddresses': (context) => MyAddresses(),
        '/mywallet': (context) => MyWallet(),
        '/paymentmethods': (context) => PaymentMethods(),
        '/support': (context) => SupportPage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
