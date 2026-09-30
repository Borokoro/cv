import 'package:flutter/material.dart';

abstract class Breakpoints {
  static const num _mobile = 1500;

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= _mobile;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < _mobile;
  }
}
