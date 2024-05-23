import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoce_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_section.dart';



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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  AllExpensesAndQuickInvoceSection(),
                  SizedBox(height: 24),
                  MyCardAndTransactionSection(),
                  SizedBox(height: 24),
                  IncomeSection()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
