import 'package:flutter/material.dart';
import 'package:responsive_desh_board/utils/size_config.dart';
import 'package:responsive_desh_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_desh_board/widgets/custom_drawer.dart';
import 'package:responsive_desh_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_desh_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_desh_board/widgets/desh_board_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
              ),
              elevation: 0,
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width <SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          MobileLayout: (context) => const DashBoardMobileLayout(),
          TableLayout: (context) => const DeshBoardTabletLayout(),
          DesktopLayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}
