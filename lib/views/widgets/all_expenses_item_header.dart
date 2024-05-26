import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dashboard/views/widgets/custom_icon_countainer.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isActive});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconCountainer(
          backgroundColor: isActive
              ? const Color(0xfffafafa).withOpacity(0.15)
              : const Color(0xffFAFAFA),
          iconImage: image,
          iconColor:
              isActive ? const Color(0xfffafafa) : const Color(0xff4EB7F2),
        ),
        const Spacer(),
        Flexible(
          child: Icon(
            Icons.keyboard_arrow_right,
            color: isActive ? Colors.white : const Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
