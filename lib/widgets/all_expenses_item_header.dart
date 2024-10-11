import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      required this.color,
      required this.bacegroundcolor,
      required this.colorIcon});
  final String image;
  final Color? color;
  final Color colorIcon;
  final Color bacegroundcolor;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: bacegroundcolor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      color ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
      ),
      const Spacer(),
      Transform.rotate(
        angle: -1.571 * 2,
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: colorIcon,
        ),
      )
    ]);
  }
}
