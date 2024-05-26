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
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: padding?? EdgeInsets.all( width < 800? 8 : 20),
        decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            color: Colors.white),
        child: child);
  }
}
