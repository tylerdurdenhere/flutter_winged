class RideModel {
  final String? rideId;
  final String driverId;
  final String startLocationText;
  final String startLocationLang;
  final String startLocationLat;
  final String endLocationText;
  final String endLocationLang;
  final String endLocationLat;
  final String rideRequestId;
  final String smokeAllowed;
  final String petAllowed;
  final String womenOnly;
  final String completed;
  final String canceled;
  final String created;
  final String updated;
  final String deleted;

  const RideModel(
      {this.rideId,
      required this.driverId,
      required this.startLocationText,
      required this.startLocationLang,
      required this.startLocationLat,
      required this.endLocationText,
      required this.endLocationLang,
      required this.endLocationLat,
      required this.rideRequestId,
      required this.smokeAllowed,
      required this.petAllowed,
      required this.womenOnly,
      required this.completed,
      required this.canceled,
      required this.created,
      required this.updated,
      required this.deleted});

  toJason() {
    return {
      "DriverId": driverId,
      "StartLocationText": startLocationText,
      "StartLocationLang": startLocationLang,
      "StartLocationLat": startLocationLat,
      "EndLocationText": endLocationText,
      "EndLocationLang": endLocationLang,
      "EndLocationLat": endLocationLat,
      "RideRequestId": rideRequestId,
      "SmokeAllowed": smokeAllowed,
      "PetAllowed": petAllowed,
      "WomenOnly": womenOnly,
      "Completed": completed,
      "Canceled": canceled,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
