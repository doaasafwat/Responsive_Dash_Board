import 'package:flutter/material.dart';
import 'package:responsive_desh_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.text, required this.textcolor, });
  final Color color,textcolor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: color,
        ),
        onPressed: () {},
        child: Text(
          text,
          style:
           AppStyle.styleSemiBold18(context).copyWith(color: textcolor),
        ),
      ),
    );
  }
}
