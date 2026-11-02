import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/material.dart';

class BulletListWidget extends StatelessWidget {
  const BulletListWidget({super.key, required this.points});

  final List<String> points;

  static const String _bullet = "•";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (String point in points) _getBulletPoint(context, point),
      ].withVerticalElementsSpacing(4),
    );
  }

  Widget _getBulletPoint(BuildContext context, String point) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_bullet, style: textTheme.fontRegular),
        Expanded(child: Text(point, style: textTheme.fontRegular)),
      ].withHorizontalElementsSpacing(12),
    );
  }
}
