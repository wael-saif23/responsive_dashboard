import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_item.dart';

class DrawerListViewItems extends StatefulWidget {
  const DrawerListViewItems({
    super.key,
  });

  @override
  State<DrawerListViewItems> createState() => _DrawerListViewItemsState();
}

class _DrawerListViewItemsState extends State<DrawerListViewItems> {
 final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: "My Transaction", image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: "Wallet Account", image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: "My Investments", image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
           if (index != selectedIndex) {
              selectedIndex = index;
            setState(() {});
           }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItem(
              drawerItemModel: drawerItems[index],
              selected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
