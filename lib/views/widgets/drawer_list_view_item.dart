import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_item.dart';

class DrawerListViewItems extends StatelessWidget {
  const DrawerListViewItems({
    super.key,
    
  });

 
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesMyTransctions),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomDrawerItem(drawerItemModel: drawerItems[index]),
        );
      },
    );
  }
}