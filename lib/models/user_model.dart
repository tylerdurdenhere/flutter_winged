class UserModel {
  final String? userId;
  final String fullname;
  final String phoneNo;
  final String username;
  final String password;
  final String address;
  final String state;
  final String postalCode;
  final String emergencyPhoneNo;

  final String userImage;
  final String driverImage;
  final String created;
  final String updated;
  final String deleted;

  const UserModel({
    this.userId,
    required this.fullname,
    required this.phoneNo,
    required this.username,
    required this.password,
    required this.address,
    required this.state,
    required this.postalCode,
    required this.emergencyPhoneNo,
    required this.userImage,
    required this.driverImage,
    required this.created,
    required this.updated,
    required this.deleted,
  });

  toJason() {
    return {
      "FullName": fullname,
      "Phone": phoneNo,
      "Address": address,
      "Username": username,
      "Password": password,
      "State": state,
      "PostalCode": postalCode,
      "EmergencyPhoneNo": emergencyPhoneNo,
      "UserImage": userImage,
      "DriverImage": driverImage,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
