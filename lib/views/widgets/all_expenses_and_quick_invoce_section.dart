import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';

import 'quick_invoice.dart';

class AllExpensesAndQuickInvoceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
