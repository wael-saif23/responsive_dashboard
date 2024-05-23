import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_backgraund_container.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction_section.dart';
import 'package:responsive_dashboard/views/widgets/qruick_invoice_header.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoicer_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgraundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransactionSection(),
          Divider(
            height: 48,
          ),
          QuickInvicerForm()
        ],
      ),
    );
  }
}
