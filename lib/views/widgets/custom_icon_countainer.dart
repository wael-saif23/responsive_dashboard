import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconCountainer extends StatelessWidget {
  const CustomIconCountainer(
      {super.key,
      this.backgroundColor,
      required this.iconImage,
      this.iconColor});
  final Color? backgroundColor;
  final Color? iconColor;
  final String? iconImage;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
          
            decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: backgroundColor ?? const Color(0xffFAFAFA)),
            child: Center(
                child: SvgPicture.asset(
              iconImage ?? "",
              colorFilter:
                  ColorFilter.mode(iconColor ?? Colors.white, BlendMode.srcIn),
            )),
          ),
        ),
      ),
    );
  }
}
