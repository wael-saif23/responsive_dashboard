import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/functions.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

import '../../models/all_expenses_item_model.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;
  final bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: AppFunctions.customShapeDecoration(
          borderColor:  Colors.grey.shade300,
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isActive: isActive,
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
             fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemModel.subtitle,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
             fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              "\$${itemModel.price}",
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;
  final bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: AppFunctions.customShapeDecoration(
        borderColor: const Color(0xff4EB7F2),
        color: const Color(0xff4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isActive: isActive,
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          FittedBox(
             fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
             fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemModel.subtitle,
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xffFAFAFA),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
             fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              "\$${itemModel.price}",
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
