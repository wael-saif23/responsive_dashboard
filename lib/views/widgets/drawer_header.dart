import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_info_list_tile.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomInfoListTile(
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
            image: Assets.imagesAvatar3),
        Divider(
          color: Colors.grey,
          endIndent: 15,
          indent: 15,
          thickness: 1,
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
