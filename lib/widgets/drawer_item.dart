import 'package:flutter/material.dart';
import 'package:responsive_desh_board/models/drawer_item_model.dart';
import 'package:responsive_desh_board/widgets/Active_drawer_item.dart';
import 'package:responsive_desh_board/widgets/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.itemModel, required this.isActive});
  final DrawerItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(itemModel: itemModel)
        : InActiveDrawerItem(itemModel: itemModel);
  }
}
