import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_winged/models/ride_model.dart';
import 'package:flutter_winged/models/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel newuser) async {
    await _db
        .collection("User")
        .add(newuser.toJason())
        .whenComplete(() => null);
  }

  startRide(RideModel newride) async {
    await _db
        .collection("Start ride")
        .add(newride.toJason())
        .whenComplete(() => null);
  }

  Future<void> updateRideRecord(RideModel newride) async {
    await _db
        .collection("Start ride")
        .doc(newride.rideId)
        .update(newride.toJason());
  }
}
