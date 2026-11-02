import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/types/enum/skill_category.dart';

enum Skill {
  polish(name: "Polish", level: 5, category: SkillCategory.language),
  english(name: "English", level: 4, category: SkillCategory.language),
  flutter(name: "Flutter", level: 3, category: SkillCategory.mobile),
  dart(name: "Dart", level: 3, category: SkillCategory.mobile),
  androidStudio(name: "Android Studio", level: 4, category: SkillCategory.mobile),
  bloc(name: "Bloc", level: 3, category: SkillCategory.architectureAndState),
  cubit(name: "Cubit", level: 3, category: SkillCategory.architectureAndState),
  cleanArchitecture(name: "Clean Architecture", level: 3, category: SkillCategory.architectureAndState),
  getIt(name: "Get_it (DI)", level: 3, category: SkillCategory.architectureAndState),
  unitAndWidgetTests(name: "Unit & widget tests", level: 2, category: SkillCategory.architectureAndState),
  claude(name: "Claude", level: 4, category: SkillCategory.aiTools),
  restAPI(name: "REST API", level: 3, category: SkillCategory.dataAndNetworking),
  dio(name: "Dio", level: 3, category: SkillCategory.dataAndNetworking),
  firebase(name: "Firebase", level: 2, category: SkillCategory.dataAndNetworking),
  sql(name: "SQL", level: 2, category: SkillCategory.dataAndNetworking),
  autoRoute(name: "Auto_route", level: 3, category: SkillCategory.tools),
  buildRunner(name: "Build_runner", level: 3, category: SkillCategory.tools),
  git(name: "Git / Bitbucket", level: 3, category: SkillCategory.tools),
  jira(name: "Jira", level: 3, category: SkillCategory.tools),
  figma(name: "Figma", level: 3, category: SkillCategory.tools);

  final String name;
  final int level;
  final SkillCategory category;

  const Skill({required this.name, required this.level, required this.category});

  static List<Skill> getSkillsByCategory(SkillCategory category) {
    return Skill.values.where((Skill skill) => skill.category == category).toList();
  }

  String getLocalizedName(AppLocalizations localizations) {
    switch (this) {
      case Skill.english:
        return localizations.english;
      case Skill.polish:
        return localizations.polish;
      case Skill.unitAndWidgetTests:
        return localizations.unitAndWidgetTests;
      default:
        return name;
    }
  }
}
