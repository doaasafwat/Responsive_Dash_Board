import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_desh_board/utils/app_style.dart';
import 'package:responsive_desh_board/widgets/transaction_history_header.dart';
import 'package:responsive_desh_board/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
