import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isActive});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: isActive
                ? const Color(0xfffafafa).withOpacity(0.15)
                : const Color(0xffFAFAFA),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isActive ? const Color(0xfffafafa) : const Color(0xff4EB7F2),
                BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Icon(
          Icons.keyboard_arrow_right,
          color: isActive ? Colors.white : const Color(0xFF064061),
        ),
      ],
    );
  }
}
