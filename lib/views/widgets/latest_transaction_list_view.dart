import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> usersItems = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        subtitle: "Madraniadi20@gmail",
        title: "Madrani Andi"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        subtitle: "Madraniadi20@gmail",
        title: "Madrani Andi"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        subtitle: "Madraniadi20@gmail",
        title: "Madrani Andi"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: usersItems
              .map(
                (e) => IntrinsicWidth(
                  child: CustomInfoListTile(
                    userInfoModel: e,
                    edgeInsets: const EdgeInsets.only(right: 8),
                  ),
                ),
              )
              .toList(),
        ));
  }
}
