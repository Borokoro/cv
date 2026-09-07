import 'package:flutter/material.dart';

extension TextThemeExtension on TextTheme {
  TextStyle get fontXLBold => const TextStyle(fontSize: 40, fontWeight: FontWeight.w700);
  TextStyle get fontRegularBold => const TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle get fontRegular => const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  TextStyle get fontHeader => const TextStyle(fontSize: 30, fontWeight: FontWeight.w800);
}