class TransactionModel {
  final String tilte;
  final String date;
  final String amount;
  final bool isWithdrawal;

  const TransactionModel(
      {required this.tilte,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
