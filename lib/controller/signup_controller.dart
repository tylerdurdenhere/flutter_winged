import 'package:flutter_winged/models/ride_model.dart';
import 'package:flutter_winged/models/user_model.dart';
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

  updateRideRecord(RideModel newride) async {
    await userRepo.updateRideRecord(newride);
  }
}
