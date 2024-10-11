import 'package:flutter/material.dart';
import 'package:responsive_desh_board/utils/app_style.dart';
import 'package:responsive_desh_board/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16(context),
        ),
       const  SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
