class RideRequestModel {
  final String? requestId;
  final String userId;
  final String pickupLocationText;
  final String pickupLocationLang;
  final String pickupLocationLat;
  final String dropLocationText;
  final String dropLocationLang;
  final String dropLocationLat;
  final String rideId;
  final String completed;
  final String canceled;
  final String created;
  final String updated;
  final String deleted;

  const RideRequestModel(
      {this.requestId,
      required this.userId,
      required this.pickupLocationText,
      required this.pickupLocationLang,
      required this.pickupLocationLat,
      required this.dropLocationText,
      required this.dropLocationLang,
      required this.dropLocationLat,
      required this.rideId,
      required this.completed,
      required this.canceled,
      required this.created,
      required this.updated,
      required this.deleted});

  toJason() {
    return {
      "UserId": userId,
      "PickupLocationText": pickupLocationText,
      "PickupLocationLang": pickupLocationLang,
      "PickupLocationLat": pickupLocationLat,
      "DropLocationText": dropLocationText,
      "DropLocationLang": dropLocationLang,
      "DropLocationLat": dropLocationLat,
      "RideId": rideId,
      "Completed": completed,
      "Canceled": canceled,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
