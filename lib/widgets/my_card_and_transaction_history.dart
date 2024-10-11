import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_desh_board/widgets/custom_background_container.dart';
import 'package:responsive_desh_board/widgets/my_card_section.dart';
import 'package:responsive_desh_board/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          MyCardSection(),
          Divider(
            color: Color(0xFFF1F1F1),
            height: 40,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
