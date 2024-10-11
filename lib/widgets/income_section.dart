import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_desh_board/widgets/custom_background_container.dart';
import 'package:responsive_desh_board/widgets/income_header.dart';
import 'package:responsive_desh_board/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
