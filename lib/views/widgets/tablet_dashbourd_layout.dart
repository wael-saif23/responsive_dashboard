import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoce_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';



class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoceSection(),
        ),
      ],
    );
  }
}