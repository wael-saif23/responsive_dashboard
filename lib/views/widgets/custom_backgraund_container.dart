import 'package:flutter/material.dart';

class CustomBackgraundContainer extends StatelessWidget {
  const CustomBackgraundContainer({
    super.key,
    this.child,
    this.padding,
  });
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding??const EdgeInsets.all(20),
        decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            color: Colors.white),
        child: child);
  }
}
