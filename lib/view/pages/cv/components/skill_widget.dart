import 'package:cv/constants/color_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/types/enum/skill.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key, required this.skill, this.width});
  final Skill skill;
  final double? width;

  static const double _circleWidth = 20;
  static const double _circleHeight = 20;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getSkillName(context),
          _getSkillLevel(context),
        ],
      ),
    );
  }

  Widget _getSkillName(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return Text(skill.getLocalizedName(localizations), style: textTheme.fontRegularBold);
  }

  Widget _getSkillLevel(BuildContext context) {
    int index = 0;
    return Row(
      children: [
        for(index; index < skill.level; index++) ...{
          _getCircle(ColorConstants.purplish),
        },
        for(index; index < 5; index++) ...{
          _getCircle(ColorConstants.lightGrey),
        }
      ].withHorizontalElementsSpacing(5),
    );
  }

  Widget _getCircle(Color color) {
    return Container(
      width: _circleWidth,
      height: _circleHeight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
