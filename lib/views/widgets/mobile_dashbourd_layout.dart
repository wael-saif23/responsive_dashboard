import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoce_section.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_section.dart';

class MobileDashbourdLayout extends StatelessWidget {
  const MobileDashbourdLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        
        padding: EdgeInsets.only(right: 32, left: 32, bottom: 32),
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
    );
  }
}
