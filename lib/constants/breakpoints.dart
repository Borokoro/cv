import 'package:flutter/material.dart';

abstract class Breakpoints {
  static const num _tablet = 1500;
  static const num _mobile = 480;

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= _tablet;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < _tablet && MediaQuery.of(context).size.width >= _mobile;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < _mobile;
  }
}

enum BreakpointsEnum {
  mobile,
  tablet,
  web;

  static BreakpointsEnum fromContext(BuildContext context){
    final double screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth >= Breakpoints._tablet){
      return web;
    }
    else if(screenWidth < Breakpoints._tablet && screenWidth >= Breakpoints._mobile){
      return tablet;
    }
    else{
      return mobile;
    }
  }
}
