// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class UserMyTripsTabPage extends StatefulWidget {
  const UserMyTripsTabPage({super.key});

  @override
  _UserMyTripsTabPageState createState() => _UserMyTripsTabPageState();
}

class _UserMyTripsTabPageState extends State<UserMyTripsTabPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('My Trips'),
    );
  }
}
