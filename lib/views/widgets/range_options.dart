import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/functions.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppFunctions.customShapeDecoration(),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleMedium16,
              
            ),
            SizedBox(width: 18),
            Icon(Icons.keyboard_arrow_down,color:  Color(0xFF064061),),
          ],
        ),
      ),
    );
  }

 
}

