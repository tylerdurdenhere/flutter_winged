class VehiclesModel {
  final String? vehicleId;
  final String userId;
  final String vehicleName;
  final String vehicleNum;
  final String vehicleInsuranceExpiryDate;
  final String vehicleInsuranceImage;
  final String vehicleImage;

  const VehiclesModel({
    this.vehicleId,
    required this.userId,
    required this.vehicleName,
    required this.vehicleNum,
    required this.vehicleInsuranceExpiryDate,
    required this.vehicleInsuranceImage,
    required this.vehicleImage,
  });

  toJason() {
    return {
      "UserId": userId,
      "vehicleName": vehicleName,
      "vehicleNum": vehicleNum,
      "vehicleInsuranceExpiryDate": vehicleInsuranceExpiryDate,
      "vehicleInsuranceImage": vehicleInsuranceImage,
      "vehicleImage": vehicleImage,
    };
  }
}
