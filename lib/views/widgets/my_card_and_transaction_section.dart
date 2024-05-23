import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_backgraund_container.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgraundContainer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              height: 40,
            ),
             TransactionSection(),
          ],
        ),
      ),
    );
  }
}
