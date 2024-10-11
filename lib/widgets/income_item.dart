import 'package:flutter/material.dart';
import 'package:responsive_desh_board/models/income_item_model.dart';
import 'package:responsive_desh_board/utils/app_style.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: incomeItemModel.color),
      ),
      title: Text(
        incomeItemModel.tilte,
        style: AppStyle.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemModel.vaule,
        style: AppStyle.styleMedium16(context),
      ),
    );
  }
}
