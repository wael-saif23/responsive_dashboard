import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.backgroundColor, required this.text, this.textColor});
  final Color? backgroundColor;
  final Color?textColor ;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style:  AppStyles.styleSemiBold18(context).copyWith(
            color: textColor
          ),
        ),
      ),
    );
  }
}
