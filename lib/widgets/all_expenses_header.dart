import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_desh_board/utils/app_style.dart';
import 'package:responsive_desh_board/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}
