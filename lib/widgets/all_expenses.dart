import 'package:flutter/material.dart';
import 'package:responsive_desh_board/widgets/all_expenses_header.dart';
import 'package:responsive_desh_board/widgets/all_expenses_items_list_view.dart';
import 'package:responsive_desh_board/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
