// import 'package:flutter/material.dart';
// import 'package:responsive_desh_board/models/user_info_model.dart';
// import 'package:responsive_desh_board/utils/AppImages.dart';
// import 'package:responsive_desh_board/widgets/user_info_list_tile.dart';

// class LatestTransactionListView extends StatelessWidget {
//   const LatestTransactionListView({super.key});
//   static const items = [
//     UserInfoModel(
//         image: Assets.imagesAvatar1,
//         title: 'Madrani Andi',
//         subtitle: 'Madraniadi20@gmail'),
//     UserInfoModel(
//         image: Assets.imagesAvatar2,
//         title: 'Madrani Andi',
//         subtitle: 'Madraniadi20@gmail'),
//     UserInfoModel(
//         image: Assets.imagesAvatar3,
//         title: 'Madrani Andi',
//         subtitle: 'Madraniadi20@gmail'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: items
//             .map((e) => IntrinsicWidth(
//               child: UserInfoListTile(
//                     userInfoModel: e,
//                   ),
//             ))
//             .toList(),
//       ),
//     );
//     return SizedBox(
//       height: 80,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return IntrinsicWidth(
//               child: UserInfoListTile(
//                 userInfoModel: items[index],
//               ),
//             );
//           }),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:responsive_desh_board/models/user_info_model.dart';
import 'package:responsive_desh_board/utils/AppImages.dart';
import 'package:responsive_desh_board/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
