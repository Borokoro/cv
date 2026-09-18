import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppBarText extends StatefulWidget {
  const AppBarText({
    super.key,
    required this.onTap,
    required this.text,
    this.isChosen = false,
    this.onHoverColor = ColorConstants.red,
  });

  final VoidCallback onTap;
  final String text;
  final bool isChosen;
  final Color onHoverColor;

  @override
  State<AppBarText> createState() => _AppBarTextState();
}

class _AppBarTextState extends State<AppBarText> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return MouseRegion(
      onHover: (_) => setState(() {
        _isHover = true;
      }),
      onExit: (_) => setState(() {
        _isHover = false;
      }),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.text,
              style: textTheme.fontAppBar.copyWith(
                color: _isHover || widget.isChosen ? widget.onHoverColor : ColorConstants.white,
                fontFamily: AppConstants.defaultFont,
              ),
              recognizer: TapGestureRecognizer()..onTap = widget.onTap,
            ),
          ],
        ),
      ),
    );
  }
}
