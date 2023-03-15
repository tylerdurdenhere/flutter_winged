class BankModel {
  final String? bankId;
  final String userId;
  final String bankName;
  final String accountNo;
  final String branch;
  final String swiftCode;
  final String created;
  final String updated;
  final String deleted;

  const BankModel({
    this.bankId,
    required this.userId,
    required this.bankName,
    required this.accountNo,
    required this.branch,
    required this.swiftCode,
    required this.created,
    required this.updated,
    required this.deleted,
  });

  toJason() {
    return {
      "UserId": userId,
      "BankName": bankName,
      "AccountNo": accountNo,
      "Branch": branch,
      "SwiftCode": swiftCode,
      "Created": created,
      "Updated": updated,
      "Deleted": deleted,
    };
  }
}
