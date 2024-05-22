import 'package:flutter/material.dart';

class CustomDotsIndecator extends StatelessWidget {
  const CustomDotsIndecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height:  8,
      width: isActive ? 32 :8,
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xff4db7f2) : const Color(0xffe7e7e7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
