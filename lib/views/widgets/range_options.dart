import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                color: Color(0xffF1F1F1),
                width: 1,
              ))),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleMedium16,
            ),
            SizedBox(width: 18),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}