import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, bottom: 32, right: 24),
      child: Column(
        children: [
          MyCardSection(),
          // SizedBox(height: 24),
          // IncomeSection(),
        ],
      ),
    );
  }
}
