import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoce_section.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_section.dart';

class MobileDashbourdLayout extends StatelessWidget {
  const MobileDashbourdLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: width < 800
            ? const EdgeInsets.only(right: 16, left: 16, bottom: 16)
            : const EdgeInsets.only(right: 32, left: 32, bottom: 32),
        child: const Column(
          children: [
            AllExpensesAndQuickInvoceSection(),
            SizedBox(height: 12),
            MyCardAndTransactionSection(),
            SizedBox(height: 12),
            IncomeSection()
          ],
        ),
      ),
    );
  }
}
