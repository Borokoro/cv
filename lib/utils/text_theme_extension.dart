import 'package:flutter/material.dart';

extension TextThemeExtension on TextTheme {
  TextStyle get fontXLBold => const TextStyle(fontSize: 40, fontWeight: FontWeight.w700);
  TextStyle get fontRegularBold => const TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle get fontRegular => const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  TextStyle get fontHeader => const TextStyle(fontSize: 30, fontWeight: FontWeight.w800, letterSpacing: 5);
  TextStyle get fullNameFont =>
      const TextStyle(fontSize: 40, fontWeight: FontWeight.w700, letterSpacing: 5, height: 1.0);
  TextStyle get fontAppBar => const TextStyle(fontSize: 30, fontWeight: FontWeight.w800);
}
