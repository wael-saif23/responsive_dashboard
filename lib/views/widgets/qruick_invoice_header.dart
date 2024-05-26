import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_icon_countainer.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
     
        const CustomIconCountainer(
          iconImage: Assets.imagesAdd,
          iconColor: Color(0xff4EB7F2),
        )
      ],
    );
  }
}
