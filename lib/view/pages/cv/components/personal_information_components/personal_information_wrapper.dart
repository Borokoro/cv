import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/material.dart';

class PersonalInformationWrapper extends StatelessWidget {
  const PersonalInformationWrapper({super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(title, style: textTheme.fontRegularBold),
        body,
      ].withVerticalElementsSpacing(20),
    );
  }
}
