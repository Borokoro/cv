import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pl.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pl'),
  ];

  /// No description provided for @summaryPart1.
  ///
  /// In en, this message translates to:
  /// **'Flutter developer with over 3 years of hands-on experience building cross-platform iOS and Android apps, from university projects and internships to a Junior Flutter Developer role at Ball Squad. I write Dart code organised in layers in the spirit of Clean Architecture, manage state with BLoC/Cubit and rely on dependency injection (get_it) and code generation (build_runner).'**
  String get summaryPart1;

  /// No description provided for @summaryPart2.
  ///
  /// In en, this message translates to:
  /// **'I work daily with AI agents, mainly Claude and Claude Code, to speed up implementation, refactoring, writing tests and code review, while keeping responsibility for code quality. I hold an MSc in Computer Science and I want to grow on international client projects, learning from experienced tech leads and sharing knowledge with the team.'**
  String get summaryPart2;

  /// No description provided for @university.
  ///
  /// In en, this message translates to:
  /// **'Lublin University of Technology'**
  String get university;

  /// No description provided for @workExperience.
  ///
  /// In en, this message translates to:
  /// **'Work experience'**
  String get workExperience;

  /// No description provided for @polytechnicsInternship.
  ///
  /// In en, this message translates to:
  /// **'Polytechnicʼs Internship'**
  String get polytechnicsInternship;

  /// No description provided for @lublin.
  ///
  /// In en, this message translates to:
  /// **'Lublin'**
  String get lublin;

  /// No description provided for @lodz.
  ///
  /// In en, this message translates to:
  /// **'Łódź'**
  String get lodz;

  /// No description provided for @polytechnicsInternDetails.
  ///
  /// In en, this message translates to:
  /// **'Mandatory internship organized by the polytechnic with a strong focus on Flutter.'**
  String get polytechnicsInternDetails;

  /// No description provided for @flutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter'**
  String get flutter;

  /// No description provided for @flutterDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Flutter Developer'**
  String get flutterDeveloper;

  /// No description provided for @flutterIntern.
  ///
  /// In en, this message translates to:
  /// **'Flutter Intern'**
  String get flutterIntern;

  /// No description provided for @mapMaker.
  ///
  /// In en, this message translates to:
  /// **'MapMaker.online'**
  String get mapMaker;

  /// No description provided for @mapMakerDetails1.
  ///
  /// In en, this message translates to:
  /// **'Building a cross-platform Flutter mobile app from scratch as the sole developer.'**
  String get mapMakerDetails1;

  /// No description provided for @mapMakerDetails2.
  ///
  /// In en, this message translates to:
  /// **'Full ownership of the app: architecture, tech stack, implementation and releases.'**
  String get mapMakerDetails2;

  /// No description provided for @mapMakerDetails3.
  ///
  /// In en, this message translates to:
  /// **'Self-managed work: planning, prioritising and delivering features independently.'**
  String get mapMakerDetails3;

  /// No description provided for @mapMakerDetails4.
  ///
  /// In en, this message translates to:
  /// **'Responsible for code quality, testing and stability of the product end to end.'**
  String get mapMakerDetails4;

  /// No description provided for @paidwork.
  ///
  /// In en, this message translates to:
  /// **'Paidwork'**
  String get paidwork;

  /// No description provided for @paidworkInternDetails.
  ///
  /// In en, this message translates to:
  /// **'Developed Flutter features in a commercial mobile app within a Git-based team workflow.'**
  String get paidworkInternDetails;

  /// No description provided for @ballSquad.
  ///
  /// In en, this message translates to:
  /// **'Ball Squad'**
  String get ballSquad;

  /// No description provided for @ballSquadInternDetails1.
  ///
  /// In en, this message translates to:
  /// **'Implemented UI screens from Figma and connected them to backend services.'**
  String get ballSquadInternDetails1;

  /// No description provided for @ballSquadInternDetails2.
  ///
  /// In en, this message translates to:
  /// **'Learned the team\'s architecture and workflow, which led to a junior role.'**
  String get ballSquadInternDetails2;

  /// No description provided for @warsaw.
  ///
  /// In en, this message translates to:
  /// **'Warsaw'**
  String get warsaw;

  /// No description provided for @flutterJunior.
  ///
  /// In en, this message translates to:
  /// **'Junior Flutter Developer'**
  String get flutterJunior;

  /// No description provided for @ballSquadJuniorDetails1.
  ///
  /// In en, this message translates to:
  /// **'Building and maintaining features of a cross-platform Flutter app for iOS and Android.'**
  String get ballSquadJuniorDetails1;

  /// No description provided for @ballSquadJuniorDetails2.
  ///
  /// In en, this message translates to:
  /// **'State management with BLoC/Cubit, layered architecture with get_it dependency injection.'**
  String get ballSquadJuniorDetails2;

  /// No description provided for @ballSquadJuniorDetails3.
  ///
  /// In en, this message translates to:
  /// **'REST API integration with Dio, navigation with auto_route, code generation with build_runner.'**
  String get ballSquadJuniorDetails3;

  /// No description provided for @ballSquadJuniorDetails4.
  ///
  /// In en, this message translates to:
  /// **'Agile teamwork with Jira, code reviews in Bitbucket and UI built from Figma designs.'**
  String get ballSquadJuniorDetails4;

  /// No description provided for @ballSquadJuniorDetails5.
  ///
  /// In en, this message translates to:
  /// **'Using Claude Code as an AI agent for implementation, refactoring and tests.'**
  String get ballSquadJuniorDetails5;

  /// No description provided for @educationAndQualifications.
  ///
  /// In en, this message translates to:
  /// **'Education and Qualifications'**
  String get educationAndQualifications;

  /// No description provided for @bachelorTitle.
  ///
  /// In en, this message translates to:
  /// **'Bachelor of Computer Science'**
  String get bachelorTitle;

  /// No description provided for @masterTitle.
  ///
  /// In en, this message translates to:
  /// **'Master of Computer Science'**
  String get masterTitle;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfBirth;

  /// No description provided for @github.
  ///
  /// In en, this message translates to:
  /// **'Github'**
  String get github;

  /// No description provided for @linkedIn.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get linkedIn;

  /// No description provided for @onlineCvAndPortfolio.
  ///
  /// In en, this message translates to:
  /// **'Online CV & portfolio'**
  String get onlineCvAndPortfolio;

  /// No description provided for @hetmanska.
  ///
  /// In en, this message translates to:
  /// **'Hetmanska'**
  String get hetmanska;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @polish.
  ///
  /// In en, this message translates to:
  /// **'Polish (native)'**
  String get polish;

  /// No description provided for @personal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get personal;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @skillCategoryMobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get skillCategoryMobile;

  /// No description provided for @skillCategoryArchitectureAndState.
  ///
  /// In en, this message translates to:
  /// **'Architecture & state'**
  String get skillCategoryArchitectureAndState;

  /// No description provided for @skillCategoryAiTools.
  ///
  /// In en, this message translates to:
  /// **'AI tools'**
  String get skillCategoryAiTools;

  /// No description provided for @skillCategoryDataAndNetworking.
  ///
  /// In en, this message translates to:
  /// **'Data & networking'**
  String get skillCategoryDataAndNetworking;

  /// No description provided for @skillCategoryTools.
  ///
  /// In en, this message translates to:
  /// **'Tools'**
  String get skillCategoryTools;

  /// No description provided for @unitAndWidgetTests.
  ///
  /// In en, this message translates to:
  /// **'Unit & widget tests'**
  String get unitAndWidgetTests;

  /// No description provided for @present.
  ///
  /// In en, this message translates to:
  /// **'Present'**
  String get present;

  /// No description provided for @goToProjectsPage.
  ///
  /// In en, this message translates to:
  /// **'Go to projects page'**
  String get goToProjectsPage;

  /// No description provided for @goToCvPage.
  ///
  /// In en, this message translates to:
  /// **'Go to CV page'**
  String get goToCvPage;

  /// No description provided for @passwordWalletDescription.
  ///
  /// In en, this message translates to:
  /// **'This is a web application that allows users to store passwords. These passwords can be encrypted using either the HMAC or SHA512 algorithm. Within their dashboard, users have the ability to display encrypted passwords, edit them, restore previous versions, share a password with another user, delete it, or add a new password. They also have the option to view logs, so they can track activity on their account.'**
  String get passwordWalletDescription;

  /// No description provided for @tableDescription.
  ///
  /// In en, this message translates to:
  /// **'This is one of the projects that was created to pass a subject at polytechnic. The application generates tables based on data from a text file, XML, or from data in a MySQL database. Table cells are colored in red (if the retrieved data matches previously loaded data), in gray (if the retrieved data doesn\'t match previously loaded data or if there were no previously loaded data), or in white (if we are modifying a cell\'s data). This data can later be saved to a database or appropriate files.'**
  String get tableDescription;

  /// No description provided for @bowlingDescription.
  ///
  /// In en, this message translates to:
  /// **'This is a simple application that calculates points scored during a game of bowling. The most important aspect of this project are unit tests.'**
  String get bowlingDescription;

  /// No description provided for @skladappkaDescription.
  ///
  /// In en, this message translates to:
  /// **'This project was created in collaboration with my colleague to obtain the title of an engineer. This application helps users select components for a custom computer setup. It enables adding, editing, saving, comparing, and sharing user-created setups. The application utilizes the Firebase database where all components, saved setups, and user accounts are stored. Additionally, the application includes many other supplementary features.'**
  String get skladappkaDescription;

  /// No description provided for @jumpyJumperJumpsDescription.
  ///
  /// In en, this message translates to:
  /// **'It is a mobile game created using Flutter with Flame engine. It is a simple platform game where you have to jump between obstacles and achieve the highest possible score. This application is also connected to Firebase database to collect the highest scores between all the players.'**
  String get jumpyJumperJumpsDescription;

  /// No description provided for @countriesDescription.
  ///
  /// In en, this message translates to:
  /// **'Simple application where I tested the use of GraphQL API in Flutter project.'**
  String get countriesDescription;

  /// No description provided for @cvDescription.
  ///
  /// In en, this message translates to:
  /// **'This CV also utilizes Flutter framework. I want to highlight this project as it is my biggest project that I did outside of my work.'**
  String get cvDescription;

  /// No description provided for @ballSquadDescription.
  ///
  /// In en, this message translates to:
  /// **'My biggest commercial project that I had the opportunity to work on. The application fully utilizes Flutter\'s multiplatform capabilities, it has a single codebase for all supported platforms. It allows users to book classrooms and sports pitches across Poland. It also stores information about almost every sports facility in Poland and displays them on a map. Users can also create an account and complete their profile by adding their skills and interests, as well as create a team with their friends.'**
  String get ballSquadDescription;

  /// No description provided for @peopleManagementDescription.
  ///
  /// In en, this message translates to:
  /// **'This project allows to add people and their personal information and then separate them into groups. The most important aspect of this project is the usage of local SQL database in Flutter project.'**
  String get peopleManagementDescription;

  /// No description provided for @moodUpDescription.
  ///
  /// In en, this message translates to:
  /// **'One of my recruitment task. This application allows user to scroll through the different Marvel\'s comics and learn about them.'**
  String get moodUpDescription;

  /// No description provided for @authorSearchDescription.
  ///
  /// In en, this message translates to:
  /// **'Simple application that consumes public REST API. It shows user a list of created books by the given author.'**
  String get authorSearchDescription;

  /// No description provided for @portfolioDescription.
  ///
  /// In en, this message translates to:
  /// **'My first portfolio was created with Flutter framework. It is using Bloc for state management and firestore for data storage. The code is clean and I made sure that view is fully responsive.'**
  String get portfolioDescription;

  /// No description provided for @gotToProject.
  ///
  /// In en, this message translates to:
  /// **'Go to project'**
  String get gotToProject;

  /// No description provided for @goToPdfVersion.
  ///
  /// In en, this message translates to:
  /// **'Go to PDF version'**
  String get goToPdfVersion;

  /// No description provided for @cv.
  ///
  /// In en, this message translates to:
  /// **'Cv'**
  String get cv;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pl':
      return AppLocalizationsPl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
