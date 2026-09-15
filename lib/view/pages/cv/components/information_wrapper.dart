import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:flutter/material.dart';

class InformationWrapper extends StatelessWidget {
  const InformationWrapper({super.key, required this.title, required this.body, required this.textStyle});

  final String title;
  final Widget body;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Text(title, style: textStyle),
        body,
      ].withVerticalElementsSpacing(20),
    );
  }
}
