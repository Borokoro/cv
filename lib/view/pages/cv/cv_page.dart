import 'package:auto_route/auto_route.dart';
import 'package:cv/constants/icon_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/types/models/personal_information.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/name_and_photo_widget.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/personal_information_widget.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/personal_information_wrapper.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CvPage extends StatelessWidget {
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: _getCVPageBody(context))),
    );
  }

  Widget _getCVPageBody(BuildContext context) {
    return Row(
      children: [
        Flexible(flex: 1, child: _getPersonalInformationBody(context)),
        Flexible(flex: 3, child: _getExperienceBody(context)),
      ],
    );
  }

  Widget _getPersonalInformationBody(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    return Column(
      children: [
        NameAndPhotoWidget(),
        PersonalInformationWrapper(title: localizations.personal, body: _getPersonalInformationColumn(context)),
        PersonalInformationWrapper(title: localizations.personal, body: _getLanguagesColumn(context)),
      ].withVerticalElementsSpacing(60),
    );
  }

  Widget _getPersonalInformationColumn(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final PersonalInformation pi = PersonalInformation.getMyPersonalInformation(localizations);
    return Column(
      children: [
        PersonalInformationWidget(
          icon: IconConstants.address,
          title: localizations.address,
          description: pi.addressStreet,
          description2: "${pi.addressPostalCode} ${pi.city}",
        ),
        PersonalInformationWidget(
          icon: IconConstants.phone,
          title: localizations.phoneNumber,
          description: pi.phoneNumber,
        ),
        PersonalInformationWidget(
          icon: IconConstants.email,
          title: localizations.email,
          description: pi.email,
          isDescriptionEmail: true,
          isDescriptionLink: true,
        ),
        PersonalInformationWidget(
          icon: IconConstants.dateOfBirth,
          title: localizations.dateOfBirth,
          description: pi.formattedDateOfBirth,
        ),
        PersonalInformationWidget(
          icon: IconConstants.placeOfBirth,
          title: localizations.placeOfBirth,
          description: pi.placeOfBirth,
        ),
        PersonalInformationWidget(icon: IconConstants.gender, title: localizations.gender, description: pi.gender),
        PersonalInformationWidget(
          icon: IconConstants.nationality,
          title: localizations.nationality,
          description: pi.nationality,
        ),
        PersonalInformationWidget(icon: IconConstants.github, title: localizations.github, description: pi.github),
        PersonalInformationWidget(
          icon: IconConstants.linkedin,
          title: localizations.linkedIn,
          description: pi.linkedIn,
        ),
      ],
    );
  }

  Widget _getLanguagesColumn(BuildContext context) {
    return SizedBox();
  }

  Widget _getExperienceBody(BuildContext context) {
    return SizedBox();
  }
}
