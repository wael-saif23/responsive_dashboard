import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transection_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransectionItem extends StatelessWidget {
  const TransectionItem({super.key, required this.transectionModel});
  final TransectionModel transectionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: ListTile(
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            transectionModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: Text(
          transectionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transectionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transectionModel.isWithDrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
