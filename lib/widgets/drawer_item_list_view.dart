import 'package:flutter/material.dart';
import 'package:responsive_desh_board/models/drawer_item_model.dart';
import 'package:responsive_desh_board/utils/AppImages.dart';
import 'package:responsive_desh_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int indexActive = 0;
  final List<DrawerItemModel> Items = [
    const DrawerItemModel(image: Assets.imagesDashboard, text: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesMyTransctions, text: 'My Transctions'),
    const DrawerItemModel(image: Assets.imagesStatistics, text: 'Statistics'),
    const DrawerItemModel(
        image: Assets.imagesWalletAccount, text: 'Wallet Account'),
    const DrawerItemModel(
        image: Assets.imagesMyInvestments, text: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: Items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (indexActive != index) {
              setState(() {
                indexActive = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              itemModel: Items[index],
              isActive: indexActive == index,
            ),
          ),
        );
      },
    );
  }
}
