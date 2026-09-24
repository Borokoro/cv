// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get introductionPart1 => 'I am a Computer Science graduate from';

  @override
  String get university => 'Lublin University of Technology';

  @override
  String get universityInflected => 'Lublin University of Technology';

  @override
  String get introductionPart2 =>
      'with a strong interest in software development. I have experience in building cross-platform applications using Flutter framework and I am eager to expand my skills by learning new technologies. I am motivated by continuous learning and gaining practical experience, with the goal of constantly improving my technical skills. I look forward to collaborating with new people, taking on new challenges, and growing as a software developer.';

  @override
  String get workExperience => 'Work experience';

  @override
  String get polytechnicsInternship => 'Polytechnicʼs Internship';

  @override
  String get lublin => 'Lublin';

  @override
  String get polytechnicsInternDetails =>
      'Mandatory internship organized by polytechnic with strong focus on Flutter.';

  @override
  String get flutter => 'Flutter';

  @override
  String get flutterIntern => 'Flutter Intern';

  @override
  String get paidwork => 'Paidwork';

  @override
  String get paidworkInternDetails => 'Flutter internship at Paidwork company.';

  @override
  String get ballSquad => 'Ball Squad';

  @override
  String get ballSquadInternDetails =>
      'Flutter internship at Ball Squad Company.';

  @override
  String get warsaw => 'Warsaw';

  @override
  String get flutterJunior => 'Flutter Junior';

  @override
  String get ballSquadJuniorDetails =>
      'Junior Flutter Developer at Ball Squad Company.';

  @override
  String get educationAndQualifications => 'Education and Qualifications';

  @override
  String get bachelorTitle => 'Bachelor of Computer Science';

  @override
  String get masterTitle => 'Master of Computer Science';

  @override
  String get address => 'Address';

  @override
  String get phoneNumber => 'Phone number';

  @override
  String get email => 'Email';

  @override
  String get dateOfBirth => 'Date of birth';

  @override
  String get placeOfBirth => 'Place of birth';

  @override
  String get gender => 'Gender';

  @override
  String get nationality => 'Nationality';

  @override
  String get github => 'Github';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get hetmanska => 'Hetmanska';

  @override
  String get poland => 'Poland';

  @override
  String get male => 'Male';

  @override
  String get english => 'English';

  @override
  String get polish => 'Polish';

  @override
  String get personal => 'Personal';

  @override
  String get languages => 'Languages';

  @override
  String get present => 'Present';

  @override
  String get goToProjectsPage => 'Go to projects page';

  @override
  String get goToCvPage => 'Go to CV page';

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
      'This CV also utilizes Flutter framework. I want to highlight this project as it is my biggest project that I did outside of my work.';

  @override
  String get ballSquadDescription =>
      'My biggest commercial project that I had the opportunity to work on. The application fully utilizes Flutter\'s multiplatform capabilities, it has a single codebase for all supported platforms. It allows users to book classrooms and sports pitches across Poland. It also stores information about almost every sports facility in Poland and displays them on a map. Users can also create an account and complete their profile by adding their skills and interests, as well as create a team with their friends.';

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

  @override
  String get goToPdfVersion => 'Go to PDF version';
}
