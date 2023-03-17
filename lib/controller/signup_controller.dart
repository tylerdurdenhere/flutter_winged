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
import 'package:flutter_winged/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final userRepo = Get.put(UserRepository());

  Future<void> createUser(UserModel newuser) async {
    await userRepo.createUser(newuser);
  }

  Future<void> startRide(RideModel newride) async {
    await userRepo.startRide(newride);
  }

  Future<void> findRide(RideRequestModel findride) async {
    await userRepo.findRide(findride);
  }

  Future<void> bankAcc(BankModel bank) async {
    await userRepo.bankAcc(bank);
  }

  Future<void> addCard(CardModel card) async {
    await userRepo.addCard(card);
  }

  Future<void> createDriver(DriverModel driver) async {
    await userRepo.createDriver(driver);
  }

  Future<void> rating(RatingModel newrating) async {
    await userRepo.rating(newrating);
  }

  Future<void> addVehicle(VehiclesModel vehicle) async {
    await userRepo.addVehicle(vehicle);
  }

  Future<void> addWallet(WalletModel wallet) async {
    await userRepo.addWallet(wallet);
  }

  Future<void> walletTransaction(WalletTransactionModel newtransaction) async {
    await userRepo.walletTransaction(newtransaction);
  }

  Future<void> withdrawal(WithdrawalModel newwithdrawal) async {
    await userRepo.withdrawal(newwithdrawal);
  }
}
