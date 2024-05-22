import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_section.dart';


class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, bottom: 32, right: 24),
      child: Column(
        children: [
          MyCardAndTransactionSection(),
          // SizedBox(height: 24),
          // IncomeSection(),
        ],
      ),
    );
  }
}
