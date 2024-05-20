import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/active_inactive_drawer_item.dart';

class CustomDrawerFooter extends StatelessWidget {
  const CustomDrawerFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: SizedBox(height : 20)),
        InactiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: "Setting system", image: Assets.imagesSettings)),
        SizedBox(
          height: 20,
        ),
        InactiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: "Logout account", image: Assets.imagesLogout)),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
