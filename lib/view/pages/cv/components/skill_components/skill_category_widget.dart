import 'package:cv/constants/color_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/types/enum/skill.dart';
import 'package:cv/types/enum/skill_category.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:cv/view/pages/cv/components/skill_components/skill_widget.dart';
import 'package:flutter/material.dart';

class SkillCategoryWidget extends StatelessWidget {
  const SkillCategoryWidget({super.key, required this.category});

  final SkillCategory category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getCategoryName(context),
        _getSkills(),
      ].withVerticalElementsSpacing(10),
    );
  }

  Widget _getCategoryName(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return Text(
      category.getLocalizedName(localizations).toUpperCase(),
      style: textTheme.fontSkillCategory.copyWith(color: ColorConstants.purplish),
    );
  }

  Widget _getSkills() {
    final List<Skill> skills = Skill.getSkillsByCategory(category);

    return Column(
      children: [
        for (Skill skill in skills) SkillWidget(skill: skill),
      ].withVerticalElementsSpacing(10),
    );
  }
}
