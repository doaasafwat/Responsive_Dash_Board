import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_desh_board/models/drawer_item_model.dart';
import 'package:responsive_desh_board/utils/app_style.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.itemModel,
  });

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          itemModel.text,
          style: AppStyle.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
