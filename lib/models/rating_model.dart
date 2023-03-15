class RatingModel {
  final String? ratingId;
  final String ratingStars;
  final String ratingText;
  final String requestId;
  final String rideId;
  final String userId;
  final String created;
  final String updated;
  final String deleted;

  const RatingModel({
    this.ratingId,
    required this.ratingStars,
    required this.ratingText,
    required this.requestId,
    required this.rideId,
    required this.userId,
    required this.created,
    required this.updated,
    required this.deleted,
  });

  toJason() {
    return {
      "RatingStars": ratingStars,
      "RatingText": ratingText,
      "RequestId": requestId,
      "RideId": rideId,
      "UserId": userId,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
