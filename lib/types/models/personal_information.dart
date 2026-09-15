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
  final String placeOfBirth;
  final String gender;
  final String nationality;
  final String github;
  final String linkedIn;

  PersonalInformation({
    required this.addressStreet,
    required this.addressPostalCode,
    required this.city,
    required this.phoneNumber,
    required this.email,
    required this.formattedDateOfBirth,
    required this.placeOfBirth,
    required this.gender,
    required this.nationality,
    required this.github,
    required this.linkedIn,
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
      placeOfBirth: localizations.lublin,
      gender: localizations.male,
      nationality: localizations.poland,
      github: PersonalInformationConstants.github,
      linkedIn: PersonalInformationConstants.linkedIn,
    );
  }
}
