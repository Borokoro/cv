import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/personal_information_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/utils/formatted_utc_date_time.dart';

class PersonalInformation {
  final String addressStreet;
  final String addressPostalCode;
  final String city;
  final String phoneNumber;
  final String email;
  final String formattedDateOfBirth;
  final String github;
  final String githubLabel;
  final String linkedIn;
  final String linkedInLabel;
  final String onlineCv;
  final String onlineCvLabel;

  PersonalInformation({
    required this.addressStreet,
    required this.addressPostalCode,
    required this.city,
    required this.phoneNumber,
    required this.email,
    required this.formattedDateOfBirth,
    required this.github,
    required this.githubLabel,
    required this.linkedIn,
    required this.linkedInLabel,
    required this.onlineCv,
    required this.onlineCvLabel,
  });

  factory PersonalInformation.getMyPersonalInformation(AppLocalizations localizations) {
    return PersonalInformation(
      addressStreet: localizations.hetmanska,
      addressPostalCode: PersonalInformationConstants.addressPostalCode,
      city: localizations.lublin,
      phoneNumber: PersonalInformationConstants.phoneNumber,
      email: PersonalInformationConstants.email,
      formattedDateOfBirth: FormattedUtcDateTime(
        AppConstants.dateFormatDayMonthYearDashed,
        PersonalInformationConstants.dateOfBirth,
      ).toString(),
      github: PersonalInformationConstants.github,
      githubLabel: PersonalInformationConstants.githubLabel,
      linkedIn: PersonalInformationConstants.linkedIn,
      linkedInLabel: PersonalInformationConstants.linkedInLabel,
      onlineCv: PersonalInformationConstants.onlineCv,
      onlineCvLabel: PersonalInformationConstants.onlineCvLabel,
    );
  }
}
