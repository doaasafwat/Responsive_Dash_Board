import 'package:flutter/material.dart';
import 'package:responsive_desh_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_desh_board/widgets/income_section.dart';
import 'package:responsive_desh_board/widgets/my_card_and_transaction_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
