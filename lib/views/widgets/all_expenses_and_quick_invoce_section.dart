import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';

import 'quick_invoice.dart';

class AllExpensesAndQuickInvoceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 32, right: 24, bottom: 32),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
