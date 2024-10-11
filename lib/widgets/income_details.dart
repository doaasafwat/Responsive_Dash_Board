import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:responsive_desh_board/models/income_item_model.dart';
import 'package:responsive_desh_board/widgets/income_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List items = [
    IncomeItemModel(
      tilte: 'Design service',
      vaule: '40%',
      color: Color(0xff208CC8),
    ),
    IncomeItemModel(
      tilte: 'Design product',
      vaule: '25%',
      color: Color(0xff4EB7F2),
    ),
    IncomeItemModel(
      tilte: 'Product royalti',
      vaule: '20%',
      color: Color(0xff064061),
    ),
    IncomeItemModel(
      tilte: 'Other',
      vaule: '22%',
      color: Color(0xffE2DECD),
    )
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width);
    return Column(
      children: items.map((e) => IncomeItem(incomeItemModel: e)).toList(),
    );
  }
}
