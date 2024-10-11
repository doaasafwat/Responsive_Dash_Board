import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_desh_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_desh_board/widgets/custom_drawer.dart';
import 'package:responsive_desh_board/widgets/income_section.dart';
import 'package:responsive_desh_board/widgets/my_card_and_transaction_history.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
      Expanded(
        flex: 3,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
          children: [
              Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: AllExpensesAndQuickInvoiceSection(),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCardAndTransactionHistory(),
                SizedBox(
                  height: 24,
                ),
                Expanded(child: IncomeSection()),
              ],
            ),
          ),
          ],
        ),
            )
          ],
        )
      )
      ],
    );
  }
}
