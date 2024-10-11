
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_desh_board/utils/app_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[ Text(
        'Transaction History',
        style: AppStyle.styleSemiBold20(context),
      ),

     Text(
        'See all',
        style: AppStyle.styleMedium16(context)
            .copyWith(color: const Color(0xff4EB7F2),),
      ),
      ],
    );
  }
}
