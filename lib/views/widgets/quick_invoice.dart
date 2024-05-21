import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_backgraund_container.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction_section.dart';
import 'package:responsive_dashboard/views/widgets/qruick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgraundContainer(
      child: Column(
        children: [
          QruickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransactionSection(),
        ],
      ),
    );
  }
}
