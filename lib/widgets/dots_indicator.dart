import 'package:flutter/cupertino.dart';
import 'package:responsive_desh_board/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) =>  Padding(
                padding: EdgeInsets.only(right: 6),
                child: CustomDotIndicator(
                  isActive:index==currentPage,
                ),
              )),
    );
  }
}
