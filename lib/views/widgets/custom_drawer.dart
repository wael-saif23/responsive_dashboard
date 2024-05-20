import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomInfoListTile(
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
            image: Assets.imagesAvatar3)
      ],
    );
  }
}
