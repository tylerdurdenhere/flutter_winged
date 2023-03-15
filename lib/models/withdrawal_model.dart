class WithdrawalModel {
  final String? withdrawalId;
  final String amount;
  final String walletId;
  final String note;

  const WithdrawalModel({
    this.withdrawalId,
    required this.amount,
    required this.walletId,
    required this.note,
  });

  toJason() {
    return {
      "Amount": amount,
      "WalletId": walletId,
      "Note": note,
    };
  }
}
