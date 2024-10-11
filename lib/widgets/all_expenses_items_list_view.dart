import 'package:flutter/material.dart';
import 'package:responsive_desh_board/models/all_expenses_item_model.dart';
import 'package:responsive_desh_board/utils/AppImages.dart';
import 'package:responsive_desh_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int isSelected = 0;
  final items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        price: r"$20,129",
        title: 'Balance',
        date: 'April 2022'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        price: r"$20,129",
        title: 'Income',
        date: 'April 2022'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        price: r"$20,129",
        title: 'Expenses',
        date: 'April 2022'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              UpdateSelect(0);
            },
            child: AllExpensesItem(
                isActive: 0 == isSelected, allExpensesItemModel: items[0]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              UpdateSelect(1);
            },
            child: AllExpensesItem(
                isActive: 1 == isSelected, allExpensesItemModel: items[1]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              UpdateSelect(2);
            },
            child: AllExpensesItem(
                isActive: 2 == isSelected, allExpensesItemModel: items[2]),
          ),
        ),
      ],
    );
  }

  void UpdateSelect(int index) {
    setState(() {
      isSelected = index;
    });
  }
}
