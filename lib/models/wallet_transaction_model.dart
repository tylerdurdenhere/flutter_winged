class WalletTransactionModel {
  final String? transactionId;
  final String walletId;
  final String fromWalletId;
  final String type;
  final String amount;
  final String transaction;
  final String date;
  final String created;
  final String updated;
  final String deleted;

  const WalletTransactionModel({
    this.transactionId,
    required this.walletId,
    required this.fromWalletId,
    required this.type,
    required this.amount,
    required this.transaction,
    required this.date,
    required this.created,
    required this.updated,
    required this.deleted,
  });

  toJason() {
    return {
      "WalletId": walletId,
      "FromWalletId": fromWalletId,
      "Type": type,
      "Amount": amount,
      "Transaction": transaction,
      "Date": date,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
