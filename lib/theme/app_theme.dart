import 'package:cv/constants/app_constants.dart';
import 'package:flutter/material.dart';

ThemeData appTheme(BuildContext context) {
  final ThemeData themeData = ThemeData.light(useMaterial3: true);
  return themeData.copyWith(
    textTheme: themeData.textTheme.apply(fontFamily: AppConstants.defaultFont),
  );
}