import 'package:flutter/cupertino.dart';
import 'package:responsive_desh_board/utils/app_style.dart';
import 'package:responsive_desh_board/widgets/range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyle.styleSemiBold20(context),
        ),
        const RangeOptions(),
      ],
    );
  }
}
