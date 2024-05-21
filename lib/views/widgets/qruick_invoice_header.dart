import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_icon_countainer.dart';

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
          iconImage: Assets.imagesAdd,iconColor: Color(0xff4EB7F2),

        )
      ],
    );
  }
}
