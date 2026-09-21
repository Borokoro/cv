import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:cv/constants/color_constants.dart';

class Arrow extends StatefulWidget {
  const Arrow({super.key, required this.isArrowLeft});
  final bool isArrowLeft;

  @override
  State<Arrow> createState() => _ArrowState();
}

class _ArrowState extends State<Arrow> {
  bool isArrowHovered = false;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Material(
      type: MaterialType.transparency,
      child: Ink(
        child: InkWell(
          hoverColor: ColorConstants.purplish,
          onTap: () {},
          child: Center(
            child: Text(widget.isArrowLeft ? StringUtils.lessThan : StringUtils.greaterThan, style: textTheme.fontBigArrows.copyWith(color: ColorConstants.white),),
          ),
        ),
      ),
    );
  }
}
