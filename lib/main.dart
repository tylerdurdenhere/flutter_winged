// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winged/screens/Main_screens/home_page.dart';
import 'package:flutter_winged/screens/Main_screens/home_page_driver.dart';
import 'package:flutter_winged/screens/Main_screens/main_page.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/profile/my_addresses_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/profile/my_vehicles_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_driver/profile/payment_methods_driver.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/profile/my_addresses.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/profile/my_vehicles.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/profile/my_wallet.dart';
import 'package:flutter_winged/screens/Navigation_tabs_user/profile/payment_methods.dart';
import 'package:flutter_winged/support.dart';

import 'about.dart';

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
        //
        '/support': (context) => SupportPage(),
        '/about': (context) => AboutPage(),
        //
        '/myVehiclesDriver': (context) => MyVehiclesDriver(),
        '/myaddressesDriver': (context) => MyAddressesDriver(),
        '/paymentmethodsDriver': (context) => PaymentMethodsDriver(),
      },
    );
  }
}
