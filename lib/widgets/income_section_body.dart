
import 'package:flutter/material.dart';
import 'package:responsive_desh_board/utils/size_config.dart';
import 'package:responsive_desh_board/widgets/detailed_income_chart.dart';
import 'package:responsive_desh_board/widgets/income_chart.dart';
import 'package:responsive_desh_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width >= SizeConfig.desktop && width <= 1800) {
      return const Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: DetailedIncomeChart(),
        ),
      );
    } else if (width < SizeConfig.desktop && width >= 600) {
      
      return const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IncomeChart(),
          ),
          Expanded(
            child: IncomeDetails(),
          ),
        ],
      );
    } else {
    
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: IncomeChart(),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: IncomeDetails(),
          ),
        ],
      );
    }
  }
}
// import 'package:flutter/material.dart';
// import 'package:responsive_desh_board/utils/size_config.dart';
// import 'package:responsive_desh_board/widgets/detailed_income_chart.dart';
// import 'package:responsive_desh_board/widgets/income_chart.dart';
// import 'package:responsive_desh_board/widgets/income_details.dart';

// class IncomeSectionBody extends StatelessWidget {
//   const IncomeSectionBody({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.sizeOf(context).width;
//     return width >= SizeConfig.desktop && width <= 1800 
        
//         ? const Expanded(
//             child: Padding(
//             padding: EdgeInsets.all(16),
//             child: DetailedIncomeChart(),
//           ))
//         : const Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: IncomeChart(),
//               ),
//               Expanded(
//                 child: IncomeDetails(),
//               ),
//             ],
//           );
//   }
// }