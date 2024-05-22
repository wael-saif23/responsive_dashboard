import 'package:flutter/material.dart';

abstract class AppFunctions {
  static ShapeDecoration customShapeDecoration({
    Color? color,
    double borderSideWidth = 1,
    Color? borderColor,
    double borderRadius = 12,
    DecorationImage? backGroundImage,
  }) {
    return ShapeDecoration(
      image: backGroundImage,
        color: color ?? Colors.white,
        shape: RoundedRectangleBorder(
          
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              color: borderColor ?? const Color(0xffF1F1F1),
              width: borderSideWidth,
            )));
  }
}
