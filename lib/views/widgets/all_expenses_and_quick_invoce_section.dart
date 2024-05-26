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
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const AllExpenses(),
        SizedBox(height: width < 800 ? 12 : 24),
        const QuickInvoice(),
      ],
    );
  }
}
