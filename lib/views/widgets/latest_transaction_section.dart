import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Latest Transaction", style: AppStyles.styleRegular16),
        SizedBox(height: 12),
        LatestTransactionListView(),
      ],
    );
  }
}
