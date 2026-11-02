import 'package:cv/l10n/app_localizations.dart';

enum SkillCategory {
  language,
  mobile,
  architectureAndState,
  aiTools,
  dataAndNetworking,
  tools;

  String getLocalizedName(AppLocalizations localizations) {
    switch (this) {
      case SkillCategory.language:
        return localizations.languages;
      case SkillCategory.mobile:
        return localizations.skillCategoryMobile;
      case SkillCategory.architectureAndState:
        return localizations.skillCategoryArchitectureAndState;
      case SkillCategory.aiTools:
        return localizations.skillCategoryAiTools;
      case SkillCategory.dataAndNetworking:
        return localizations.skillCategoryDataAndNetworking;
      case SkillCategory.tools:
        return localizations.skillCategoryTools;
    }
  }
}
