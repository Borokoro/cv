// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get introductionPart1 => 'Jestem absolwentem informatyki';

  @override
  String get university => 'Politechnika Lubelska';

  @override
  String get universityInflected => 'Politechniki Lubelskiej';

  @override
  String get introductionPart2 =>
      'i interesuję się tworzeniem oprogramowania. Mam doświadczenie w tworzeniu aplikacji wieloplatformowych z wykorzystaniem frameworka Flutter i chętnie rozwijam swoje umiejętności, poznając nowe technologie. Motywuje mnie ciągła nauka i zdobywanie praktycznego doświadczenia, a moim celem jest nieustanne doskonalenie swoich umiejętności technicznych. Chętnie podejmuję współpracę z nowymi osobami, stawiam czoła nowym wyzwaniom i rozwijam się jako programista.';

  @override
  String get workExperience => 'Doświadczenie zawodowe';

  @override
  String get polytechnicsInternship => 'Staż politechniki';

  @override
  String get lublin => 'Lublin';

  @override
  String get polytechnicsInternDetails =>
      'Obowiązkowa praktyka zawodowa zorganizowana przez Politechnikę, z dużym naciskiem na technologię Flutter.';

  @override
  String get flutter => 'Flutter';

  @override
  String get flutterIntern => 'Stażysta Flutter';

  @override
  String get paidwork => 'Paidwork';

  @override
  String get paidworkInternDetails => 'Staż w Flutterze w firmie Paidwork.';

  @override
  String get ballSquad => 'Ball Squad';

  @override
  String get ballSquadInternDetails => 'Staż w Flutterze w firmie Ball Squad.';

  @override
  String get warsaw => 'Warszawa';

  @override
  String get flutterJunior => 'Młodszy programista Flutter';

  @override
  String get ballSquadJuniorDetails =>
      'Młodszy programista w Flutterze w firmie Ball Squad.';

  @override
  String get educationAndQualifications => 'Wykształcenie i kwalifikacje';

  @override
  String get bachelorTitle => 'Tytuł inżyniera z informatyki';

  @override
  String get masterTitle => 'Tytuł magistra z informatyki';

  @override
  String get address => 'Adres';

  @override
  String get phoneNumber => 'Numer telefonu';

  @override
  String get email => 'E-mail';

  @override
  String get dateOfBirth => 'Data urodzenia';

  @override
  String get placeOfBirth => 'Miejsce urodzenia';

  @override
  String get gender => 'Płeć';

  @override
  String get nationality => 'Narodowość';

  @override
  String get github => 'Github';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get hetmanska => 'Hetmańska';

  @override
  String get poland => 'Polska';

  @override
  String get male => 'Mężczyzna';

  @override
  String get english => 'Angielski';

  @override
  String get polish => 'Polski';

  @override
  String get personal => 'Dane osobowe';

  @override
  String get languages => 'Języki';

  @override
  String get present => 'Obecnie';

  @override
  String get goToProjectsPage => 'Przejdź do projektów ↑';

  @override
  String get goToCvPage => 'Przejdź do CV ↓';

  @override
  String get passwordWalletDescription =>
      'This is a web application that allows users to store passwords. These passwords can be encrypted using either the HMAC or SHA512 algorithm. Within their dashboard, users have the ability to display encrypted passwords, edit them, restore previous versions, share a password with another user, delete it, or add a new password. They also have the option to view logs, so they can track activity on their account.';

  @override
  String get tableDescription =>
      'This is one of the projects that was created to pass a subject at polytechnic. The application generates tables based on data from a text file, XML, or from data in a MySQL database. Table cells are colored in red (if the retrieved data matches previously loaded data), in gray (if the retrieved data doesn\'t match previously loaded data or if there were no previously loaded data), or in white (if we are modifying a cell\'s data). This data can later be saved to a database or appropriate files.';

  @override
  String get bowlingDescription =>
      'This is a simple application that calculates points scored during a game of bowling. The most important aspect of this project are unit tests.';

  @override
  String get skladappkaDescription =>
      'This project was created in collaboration with my colleague to obtain the title of an engineer. This application helps users select components for a custom computer setup. It enables adding, editing, saving, comparing, and sharing user-created setups. The application utilizes the Firebase database where all components, saved setups, and user accounts are stored. Additionally, the application includes many other supplementary features.';

  @override
  String get jumpyJumperJumpsDescription =>
      'It is a mobile game created using Flutter with Flame engine. It is a simple platform game where you have to jump between obstacles and achieve the highest possible score. This application is also connected to Firebase database to collect the highest scores between all the players.';

  @override
  String get countriesDescription =>
      'Simple application where I tested the use of GraphQL API in Flutter project.';

  @override
  String get cvDescription =>
      'This CV is also created using Flutter framework. I want to highlight this project as it is my biggest project that I did outside of my work.';

  @override
  String get ballSquadDescription =>
      'My biggest commercial project that I worked on. This application fully utilizes Flutter\'s multiplatform capabilities. This application allows user to book classrooms or pitches across Poland. It is also stores and maps almost every sport object in Poland.';

  @override
  String get peopleManagementDescription =>
      'This project allows to add people and their personal information and then separate them into groups. The most important aspect of this project is the usage of local SQL database in Flutter project.';

  @override
  String get moodUpDescription =>
      'One of my recruitment task. This application allows user to scroll through the different Marvel\'s comics and learn about them.';

  @override
  String get authorSearchDescription =>
      'Simple application that consumes public REST API. It shows user a list of created books by the given author.';

  @override
  String get portfolioDescription =>
      'My first portfolio was created with Flutter framework. It is using Bloc for state management and firestore for data storage. The code is clean and I made sure that view is fully responsive.';

  @override
  String get gotToProject => 'Go to project';
}
