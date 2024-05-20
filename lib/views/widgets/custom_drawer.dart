import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dashboard/views/widgets/drawer_footer.dart';
import 'package:responsive_dashboard/views/widgets/drawer_header.dart';
import 'package:responsive_dashboard/views/widgets/drawer_list_view_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomDrawerHeader()),
        DrawerListViewItems(),
        SliverFillRemaining(
          hasScrollBody: false,

          child: CustomDrawerFooter())
      ],
    );
  }
}
