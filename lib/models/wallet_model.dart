class WalletModel {
  final String? walletId;
  final String walletOwnerId;
  final String walletBalance;
  final String walletStatus;
  final String created;
  final String updated;
  final String deleted;

  const WalletModel({
    this.walletId,
    required this.walletOwnerId,
    required this.walletBalance,
    required this.walletStatus,
    required this.created,
    required this.updated,
    required this.deleted,
  });

  toJason() {
    return {
      "WalletOwnerId": walletOwnerId,
      "WalletBalance": walletBalance,
      "WalletStatus": walletStatus,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
