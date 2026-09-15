import 'package:cv/l10n/app_localizations.dart';

enum Skill {
  polish(name: "Polish", level: 5, isProgrammingSkill: false),
  english(name: "English", level: 4, isProgrammingSkill: false),
  flutter(name: "Flutter", level: 3, isProgrammingSkill: true),
  firebase(name: "Firebase", level: 2, isProgrammingSkill: true),
  androidStdio(name: "Android Studio", level: 4, isProgrammingSkill: true),
  dart(name: "Dart", level: 3, isProgrammingSkill: true),
  sql(name: "SQL", level: 2, isProgrammingSkill: true),
  git(name: "Git", level: 3, isProgrammingSkill: true),
  jira(name: "Jira", level: 3, isProgrammingSkill: true),
  restAPI(name: "REST API", level: 3, isProgrammingSkill: true),
  bloc(name: "Bloc", level: 3, isProgrammingSkill: true),
  figma(name: "Figma", level: 3, isProgrammingSkill: true),
  cubit(name: "Cubit", level: 3, isProgrammingSkill: true),
  getIt(name: "Get_it", level: 3, isProgrammingSkill: true),
  autoRoute(name: "Auto_route", level: 3, isProgrammingSkill: true),
  bitbucket(name: "Bitbucket", level: 3, isProgrammingSkill: true),
  dio(name: "Dio", level: 3, isProgrammingSkill: true),
  buildRunner(name: "Build_runner", level: 3, isProgrammingSkill: true);

  final String name;
  final int level;
  final bool isProgrammingSkill;

  const Skill({required this.name, required this.level, required this.isProgrammingSkill});

  String getLocalizedName(AppLocalizations localizations) {
    switch (this) {
      case Skill.english:
        return localizations.english;
      case Skill.polish:
        return localizations.polish;
      default:
        return name;
    }
  }
}
