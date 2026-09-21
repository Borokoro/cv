import 'package:cv/constants/assets_constants.dart';
import 'package:cv/l10n/app_localizations.dart';

enum Project {
  ballSquad(title: "BallSquad", link: "https://app.ballsquad.pl/"),
  cv(title: "CV", link: "https://github.com/Borokoro/cv"),
  passwordWallet(title: "Password Wallet", link: "https://github.com/Borokoro/bsi", assetLink: AssetsConstants.passwordWalletGif),
  table(title: "Table", link: "https://github.com/Borokoro/zajecia", assetLink: AssetsConstants.tableGif),
  bowling(title: "Bowling", link: "https://github.com/Borokoro/bowling", assetLink: AssetsConstants.bowlingGif),
  skladappka(title: "Składappka", link: "https://github.com/itskck/Flutterappka", assetLink: AssetsConstants.skladappkaGif),
  jumpyJumperJumps(title: "Jumpy Jumper Jumps", link: "https://github.com/Borokoro/jumpy_jumper_jumps/tree/master", assetLink: AssetsConstants.jumpyJumperJumpsGif),
  countries(title: "Countries", link: "https://github.com/Borokoro/countries"),
  peopleManagement(title: "People Management", link: "https://github.com/Borokoro/people_management"),
  moodUp(title: "Mood Up", link: "https://github.com/Borokoro/mood_up"),
  authorSearch(title: "Author Search", link: "https://github.com/Borokoro/ball_squad"),
  portfolio(title: "Portfolio", link: "https://github.com/Borokoro/portfolio", assetLink: AssetsConstants.portfolioGif);

  final String title;
  final String link;
  final String? assetLink;

  const Project({required this.title, required this.link, this.assetLink});

  String getLocalizedDescription(AppLocalizations localizations) {
    switch (this) {
      case Project.ballSquad:
        return localizations.ballSquadDescription;
      case Project.cv:
        return localizations.cvDescription;
      case Project.passwordWallet:
        return localizations.passwordWalletDescription;
      case Project.table:
        return localizations.tableDescription;
      case Project.bowling:
        return localizations.bowlingDescription;
      case Project.skladappka:
        return localizations.skladappkaDescription;
      case Project.jumpyJumperJumps:
        return localizations.jumpyJumperJumpsDescription;
      case Project.countries:
        return localizations.countriesDescription;
      case Project.peopleManagement:
        return localizations.peopleManagementDescription;
      case Project.moodUp:
        return localizations.moodUpDescription;
      case Project.authorSearch:
        return localizations.authorSearchDescription;
      case Project.portfolio:
        return localizations.portfolioDescription;
    }
  }
}