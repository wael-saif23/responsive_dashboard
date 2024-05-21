import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_backgraund_container.dart';
import 'package:responsive_dashboard/views/widgets/custom_icon_countainer.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgraundContainer(
      child: SizedBox(),
    );
  }
}

class QruickInvoiceHeader extends StatelessWidget {
  const QruickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        CustomIconCountainer(
          iconImage: "",
        )
      ],
    );
  }
}
