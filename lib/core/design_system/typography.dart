import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';

class MoaTypography {
  MoaTypography._();

  static const String _suitFontFamily =
      'SUIT'; // Define the font family constant

  static TextStyle _suitBase({
    required double fontSize,
    required FontWeight fontWeight,
    double height = 1,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: _suitFontFamily, // Use the constant here
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  // ---- headline ----
  static TextStyle h1([Color? color]) => _suitBase(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: color ?? MoaColor.gray300,
  );

  // ---- subTitle ----
  static TextStyle subTitle1([Color? color]) =>
      _suitBase(fontSize: 22, fontWeight: FontWeight.normal, color: color);

  static TextStyle subTitle2([Color? color]) =>
      _suitBase(fontSize: 20, fontWeight: FontWeight.bold, color: color);

  static TextStyle subTitle3([Color? color]) =>
      _suitBase(fontSize: 20, fontWeight: FontWeight.normal, color: color);

  static TextStyle subTitle4([Color? color]) =>
      _suitBase(fontSize: 18, fontWeight: FontWeight.w600, color: color);

  // ---- body ----
  static TextStyle body1([Color? color]) =>
      _suitBase(fontSize: 18, fontWeight: FontWeight.normal, color: color);

  static TextStyle body2([Color? color]) =>
      _suitBase(fontSize: 17, fontWeight: FontWeight.normal, color: color);

  static TextStyle body3([Color? color]) =>
      _suitBase(fontSize: 16, fontWeight: FontWeight.w600, color: color);

  static TextStyle body4([Color? color]) =>
      _suitBase(fontSize: 16, fontWeight: FontWeight.normal, color: color);

  // ---- caption ----
  static TextStyle caption([Color? color]) =>
      _suitBase(fontSize: 14, fontWeight: FontWeight.normal, color: color);
}
