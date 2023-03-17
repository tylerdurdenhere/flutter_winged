import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_winged/Unused_screens/new_screens/driver_register_new.dart';
import 'package:flutter_winged/models/bank_model.dart';
import 'package:flutter_winged/models/card_model.dart';
import 'package:flutter_winged/models/driver_model.dart';
import 'package:flutter_winged/models/rating_model.dart';
import 'package:flutter_winged/models/ride_model.dart';
import 'package:flutter_winged/models/ride_request_model.dart';
import 'package:flutter_winged/models/user_model.dart';
import 'package:flutter_winged/models/vehicle_model.dart';
import 'package:flutter_winged/models/wallet_model.dart';
import 'package:flutter_winged/models/wallet_transaction_model.dart';
import 'package:flutter_winged/models/withdrawal_model.dart';
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

  findRide(RideRequestModel findride) async {
    await _db
        .collection("Find ride")
        .add(findride.toJason())
        .whenComplete(() => null);
  }

  bankAcc(BankModel bank) async {
    await _db.collection("Bank").add(bank.toJason()).whenComplete(() => null);
  }

  addCard(CardModel card) async {
    await _db.collection("Card").add(card.toJason()).whenComplete(() => null);
  }

  createDriver(DriverModel driver) async {
    await _db
        .collection("Driver")
        .add(driver.toJason())
        .whenComplete(() => null);
  }

  rating(RatingModel newrating) async {
    await _db
        .collection("Rating")
        .add(newrating.toJason())
        .whenComplete(() => null);
  }

  addVehicle(VehiclesModel vehicle) async {
    await _db
        .collection("Vehicle")
        .add(vehicle.toJason())
        .whenComplete(() => null);
  }

  addWallet(WalletModel wallet) async {
    await _db
        .collection("Wallet")
        .add(wallet.toJason())
        .whenComplete(() => null);
  }

  walletTransaction(WalletTransactionModel newtransaction) async {
    await _db
        .collection("Wallet Transaction")
        .add(newtransaction.toJason())
        .whenComplete(() => null);
  }

  withdrawal(WithdrawalModel newwithdrawal) async {
    await _db
        .collection("Withdrawal")
        .add(newwithdrawal.toJason())
        .whenComplete(() => null);
  }
}
