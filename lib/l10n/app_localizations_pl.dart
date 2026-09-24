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
  String get goToProjectsPage => 'Przejdź do projektów';

  @override
  String get goToCvPage => 'Przejdź do CV';

  @override
  String get passwordWalletDescription =>
      'Jest to aplikacja webowa umożliwiająca użytkownikom przechowywanie haseł. Hasła mogą być szyfrowane z wykorzystaniem algorytmu HMAC lub SHA512. W swoim panelu użytkownicy mogą wyświetlać zaszyfrowane hasła, edytować je, przywracać ich poprzednie wersje, udostępniać hasła innym użytkownikom, usuwać je oraz dodawać nowe. Aplikacja umożliwia również przeglądanie logów, dzięki czemu użytkownicy mogą śledzić aktywność na swoim koncie.';

  @override
  String get tableDescription =>
      'Jest to jeden z projektów stworzonych w ramach zaliczenia przedmiotu na Politechnice. Aplikacja generuje tabele na podstawie danych z pliku tekstowego, pliku XML lub danych przechowywanych w bazie MySQL. Komórki tabeli są oznaczane kolorem czerwonym, jeśli pobrane dane są zgodne z wcześniej załadowanymi danymi, szarym, jeśli pobrane dane różnią się od wcześniej załadowanych danych lub jeśli nie było wcześniej załadowanych danych, oraz białym, jeśli dane w komórce są aktualnie modyfikowane. Dane mogą następnie zostać zapisane w bazie danych lub odpowiednich plikach.';

  @override
  String get bowlingDescription =>
      'Jest to prosta aplikacja obliczająca wynik uzyskany podczas gry w kręgle. Najważniejszym elementem tego projektu są testy jednostkowe.';

  @override
  String get skladappkaDescription =>
      'Projekt został stworzony we współpracy z kolegą w celu uzyskania tytułu inżyniera. Aplikacja pomaga użytkownikom w doborze komponentów do własnego zestawu komputerowego. Umożliwia dodawanie, edytowanie, zapisywanie, porównywanie oraz udostępnianie utworzonych zestawów. Aplikacja wykorzystuje bazę danych Firebase, w której przechowywane są wszystkie komponenty, zapisane zestawy oraz konta użytkowników. Dodatkowo aplikacja oferuje wiele innych funkcji uzupełniających.';

  @override
  String get jumpyJumperJumpsDescription =>
      'Jest to gra mobilna stworzona we Flutterze z wykorzystaniem silnika Flame. Jest to prosta gra platformowa, w której zadaniem gracza jest przeskakiwanie pomiędzy przeszkodami i zdobycie jak największej liczby punktów. Aplikacja jest również połączona z bazą danych Firebase, w której przechowywane są najwyższe wyniki wszystkich graczy.';

  @override
  String get countriesDescription =>
      'Prosta aplikacja, w której przetestowałem wykorzystanie GraphQL API w projekcie Flutterowym.';

  @override
  String get cvDescription =>
      'To CV również zostało stworzone z wykorzystaniem frameworka Flutter. Chcę wyróżnić ten projekt, ponieważ jest to mój największy projekt zrealizowany poza pracą.';

  @override
  String get ballSquadDescription =>
      'Mój największy projekt komercyjny, przy którym miałem okazję pracować. Aplikacja w pełni wykorzystuje multiplatformowe możliwości Fluttera, jest jedna baza kodowa dla wszystkich platform. Aplikacja umożliwia użytkownikom rezerwowanie sal oraz boisk na terenie całej Polski. Przechowuje ona również informacje o niemal każdym obiekcie sportowym w Polsce oraz prezentuje je na mapie. Użytkownik ma również możliwość stworzenia konta i wypełnienia swojego profilu (może dodać swoje umiejętności i zainteresowania) oraz utworzyć zespół z swoimi znajomymi.';

  @override
  String get peopleManagementDescription =>
      'Projekt umożliwia dodawanie osób wraz z ich danymi osobowymi, a następnie przypisywanie ich do poszczególnych grup. Najważniejszym elementem tego projektu jest wykorzystanie lokalnej bazy danych SQL w aplikacji Flutter.';

  @override
  String get moodUpDescription =>
      'Jedno z moich zadań rekrutacyjnych. Aplikacja umożliwia przeglądanie różnych komiksów Marvela oraz zapoznawanie się z informacjami na ich temat.';

  @override
  String get authorSearchDescription =>
      'Prosta aplikacja korzystająca z publicznego REST API. Wyświetla użytkownikowi listę książek napisanych przez wskazanego autora.';

  @override
  String get portfolioDescription =>
      'Moje pierwsze portfolio stworzone z wykorzystaniem frameworka Flutter. Do zarządzania stanem wykorzystuje Bloc, a do przechowywania danych Firestore. Kod został napisany z zachowaniem zasad czystości, a widok jest w pełni responsywny.';

  @override
  String get gotToProject => 'Przejdź do projektu';

  @override
  String get goToPdfVersion => 'Przejdź do wersji PDF';
}
