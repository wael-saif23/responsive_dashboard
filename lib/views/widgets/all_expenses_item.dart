import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/functions.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: AppFunctions.customShapeDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.subtitle,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            "\$${itemModel.price}",
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
