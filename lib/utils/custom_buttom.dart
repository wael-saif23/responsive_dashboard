import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.backgroundColor, this.style, required this.text});
  final Color? backgroundColor;
  final TextStyle? style;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        style: style ?? AppStyles.styleSemiBold18,
      ),
    );
  }
}
