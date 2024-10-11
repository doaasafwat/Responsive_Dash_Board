import 'package:flutter/material.dart';
import 'package:responsive_desh_board/models/drawer_item_model.dart';
import 'package:responsive_desh_board/models/user_info_model.dart';
import 'package:responsive_desh_board/utils/AppImages.dart';
import 'package:responsive_desh_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_desh_board/widgets/inactive_drawer_item.dart';
import 'package:responsive_desh_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                  itemModel: DrawerItemModel(
                      image: Assets.imagesSettings, text: 'Setting system'),
                ),
                InActiveDrawerItem(
                  itemModel: DrawerItemModel(
                      image: Assets.imagesLogout, text: 'Logout account'),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
