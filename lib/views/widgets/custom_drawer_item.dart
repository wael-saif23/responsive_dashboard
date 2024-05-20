import 'package:flutter/material.dart';

import 'package:responsive_dashboard/models/drawer_item_model.dart';

import 'package:responsive_dashboard/views/widgets/active_inactive_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerItemModel, required this.isSelected});
  final DrawerItemModel drawerItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
