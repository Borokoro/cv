import 'package:cv/l10n/app_localizations.dart';

enum Skill {
  polish(name: "Polish", level: 5),
  english(name: "English", level: 4),
  flutter(name: "Flutter", level: 3),
  firebase(name: "Firebase", level: 2),
  androidStdio(name: "Android Studio", level: 4),
  dart(name: "Dart", level: 3),
  sql(name: "SQL", level: 2),
  git(name: "Git", level: 3),
  jira(name: "Jira", level: 3),
  restAPI(name: "REST API", level: 3),
  bloc(name: "Bloc", level: 3),
  cubit(name: "Cubit", level: 3),
  getIt(name: "Get_it", level: 3),
  autoRoute(name: "Auto_route", level: 3),
  bitbucket(name: "Bitbucket", level: 3),
  dio(name: "Dio", level: 3),
  buildRunner(name: "Build_runner", level: 3);

  final String name;
  final int level;

  const Skill({required this.name, required this.level});

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
