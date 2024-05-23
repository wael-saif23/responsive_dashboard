import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transection_history_list_view.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionHistoryHeader(),
          const SizedBox(height: 20),
          Text(
            '13 April 2022',
            style: AppStyles.styleMedium16
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          const SizedBox(height: 16),
          const Expanded(child: TransectionHistoryListView())
        ],
      ),
    );
  }
}
