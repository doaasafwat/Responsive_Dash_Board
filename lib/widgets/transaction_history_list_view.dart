import 'package:flutter/cupertino.dart';
import 'package:responsive_desh_board/models/transaction_model.dart';
import 'package:responsive_desh_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List items = [
    TransactionModel(
        tilte: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        tilte: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionModel(
        tilte: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(
            transactionModel: e,
          )).toList(),
    );
  }
}
