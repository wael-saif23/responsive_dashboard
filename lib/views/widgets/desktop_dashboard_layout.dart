import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32,),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40,left: 32,right: 24,bottom: 32),
            child: Column(
              children: [
                Expanded(child: AllExpenses(),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
