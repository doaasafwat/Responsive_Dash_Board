import 'package:flutter/material.dart';
import 'package:responsive_desh_board/widgets/custom_drawer.dart';
import 'package:responsive_desh_board/widgets/dash_board_mobile_layout.dart';

class DeshBoardTabletLayout extends StatelessWidget {
  const DeshBoardTabletLayout({super.key});

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
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
