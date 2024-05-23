import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_section.dart';


class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, bottom: 32, right: 24),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: MyCardAndTransactionSection()),
          SizedBox(height: 24),
          Expanded(child: IncomeSection()),
        ],
      ),
    );
  }
}
