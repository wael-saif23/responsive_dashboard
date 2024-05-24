import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoce_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

import 'package:responsive_dashboard/views/widgets/my_card_and_income_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    Expanded(child: AllExpensesAndQuickInvoceSection()),
                  ],
                ),
              ),
            ),
            Expanded(
            
              child: MyCardAndTransactionAndIncomeSection(),
            ),
          ],
        ),
            )
          ],
        ))
      ],
    );
  }
}
