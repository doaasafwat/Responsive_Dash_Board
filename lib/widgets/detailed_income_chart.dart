import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_desh_board/utils/app_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartDate(),
      ),
    );
  }

  PieChartData getChartDate() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            radius: activeIndex == 0 ? 60 : 40,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 0 ? null : const Color(0xFFFFFFFF)),
            title: activeIndex == 0 ? 'Design service' : '40%',
            value: 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
            value: 25,
            radius: activeIndex == 1 ? 60 : 40,
            title: activeIndex == 1 ? 'Design product' : '25%',
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 1 ? null : const Color(0xFFFFFFFF)),
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
            value: 20,
            radius: activeIndex == 2 ? 60 : 40,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 2 ? null : const Color(0xFFFFFFFF)),
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
            value: 22,
            radius: activeIndex == 3 ? 60 : 40,
            title: activeIndex == 3 ? 'Other' : '22%',
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 3 ? null : const Color(0xFFFFFFFF)),
            color: const Color(0xffE2DECD),
          )
        ]);
  }
}
