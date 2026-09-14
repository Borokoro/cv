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

  /// No description provided for @introductionPart1.
  ///
  /// In en, this message translates to:
  /// **'I am a Computer Science graduate from'**
  String get introductionPart1;

  /// No description provided for @university.
  ///
  /// In en, this message translates to:
  /// **'Lublin University of Technology'**
  String get university;

  /// No description provided for @introductionPart2.
  ///
  /// In en, this message translates to:
  /// **'with a strong interest in\nsoftware development. I have experience in building cross-platform applications using Flutter\nframework and I am eager to expand my skills by learning new technologies. I am motivated by\ncontinuous learning and gaining practical experience, with the goal of constantly improving my\ntechnical skills. I look forward to collaborating with new people, taking on new challenges, and\ngrowing as a software developer.'**
  String get introductionPart2;

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

  /// No description provided for @polytechnicsInternDetails.
  ///
  /// In en, this message translates to:
  /// **'Mandatory internship organized by polytechnic with strong focus on Flutter.'**
  String get polytechnicsInternDetails;

  /// No description provided for @flutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter'**
  String get flutter;

  /// No description provided for @intern.
  ///
  /// In en, this message translates to:
  /// **'Intern'**
  String get intern;

  /// No description provided for @paidwork.
  ///
  /// In en, this message translates to:
  /// **'Paidwork'**
  String get paidwork;

  /// No description provided for @paidworkInternDetails.
  ///
  /// In en, this message translates to:
  /// **'Flutter internship at Paidwork company.'**
  String get paidworkInternDetails;

  /// No description provided for @ballSquad.
  ///
  /// In en, this message translates to:
  /// **'Ball Squad'**
  String get ballSquad;

  /// No description provided for @ballSquadInternDetails.
  ///
  /// In en, this message translates to:
  /// **'Flutter internship at Ball Squad Company.'**
  String get ballSquadInternDetails;

  /// No description provided for @warsaw.
  ///
  /// In en, this message translates to:
  /// **'Warsaw'**
  String get warsaw;

  /// No description provided for @junior.
  ///
  /// In en, this message translates to:
  /// **'Junior'**
  String get junior;

  /// No description provided for @ballSquadJuniorDetails.
  ///
  /// In en, this message translates to:
  /// **'Junior Flutter Developer at Ball Squad Company.'**
  String get ballSquadJuniorDetails;

  /// No description provided for @educationAndQualifications.
  ///
  /// In en, this message translates to:
  /// **'Education and Qualifications'**
  String get educationAndQualifications;

  /// No description provided for @bachelorTitle.
  ///
  /// In en, this message translates to:
  /// **'Bachelor'**
  String get bachelorTitle;

  /// No description provided for @z.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get z;

  /// No description provided for @computerScience.
  ///
  /// In en, this message translates to:
  /// **'Computer Science'**
  String get computerScience;

  /// No description provided for @masterTitle.
  ///
  /// In en, this message translates to:
  /// **'Master'**
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

  /// No description provided for @placeOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Place of birth'**
  String get placeOfBirth;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

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

  /// No description provided for @hetmanska.
  ///
  /// In en, this message translates to:
  /// **'Hetmanska'**
  String get hetmanska;

  /// No description provided for @poland.
  ///
  /// In en, this message translates to:
  /// **'Poland'**
  String get poland;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @polish.
  ///
  /// In en, this message translates to:
  /// **'Polish'**
  String get polish;

  /// No description provided for @personal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get personal;
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
