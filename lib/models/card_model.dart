class CardModel {
  final String? cardId;
  final String userId;
  final String cardNo;
  final String cardExpiry;
  final String cardType;
  final String created;
  final String updated;
  final String deleted;

  const CardModel({
    this.cardId,
    required this.userId,
    required this.cardNo,
    required this.cardExpiry,
    required this.cardType,
    required this.created,
    required this.updated,
    required this.deleted,
  });

  toJason() {
    return {
      "UserId": userId,
      "CardNo": cardNo,
      "CardExpiry": cardExpiry,
      "CardType": cardType,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
