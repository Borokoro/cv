import 'package:auto_route/auto_route.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/icon_constants.dart';
import 'package:cv/constants/style_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/types/enum/skill.dart';
import 'package:cv/types/models/personal_information.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:cv/view/pages/cv/components/experience_components/experience_widget.dart';
import 'package:cv/view/pages/cv/components/information_wrapper.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/name_and_photo_widget.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/personal_information_widget.dart';
import 'package:cv/view/pages/cv/components/skill_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 1, child: _getPersonalInformationBody(context)),
          Flexible(flex: 3, child: _getExperienceBody(context)),
        ],
      ),
    );
  }

  Widget _getPersonalInformationBody(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      color: ColorConstants.brightGrey,
      child: Column(
        children: [
          NameAndPhotoWidget(),
          Padding(
            padding: StyleConstants.edgeInsetsH40,
            child: InformationWrapper(
              title: localizations.personal,
              body: _getPersonalInformationColumn(context),
              textStyle: textTheme.fontHeader,
            ),
          ),
          Padding(
            padding: StyleConstants.edgeInsetsH40,
            child: InformationWrapper(
              title: localizations.languages,
              body: _getLanguagesColumn(context),
              textStyle: textTheme.fontHeader,
            ),
          ),
        ].withVerticalElementsSpacing(40),
      ),
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
        PersonalInformationWidget(icon: IconConstants.github, title: localizations.github, description: pi.github, isDescriptionLink: true,),
        PersonalInformationWidget(
          icon: IconConstants.linkedin,
          title: localizations.linkedIn,
          description: pi.linkedIn,
          isDescriptionLink: true,
        ),
      ].withVerticalElementsSpacing(15),
    );
  }

  Widget _getLanguagesColumn(BuildContext context) {
    return Column(
      children: [
        SkillWidget(skill: Skill.english),
        SkillWidget(skill: Skill.polish),
      ].withVerticalElementsSpacing(15),
    );
  }

  Widget _getExperienceBody(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: StyleConstants.edgeInsetsH40V40,
      color: ColorConstants.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getAboutMe(context),
          InformationWrapper(
            title: localizations.workExperience,
            body: _getWorkExperience(context),
            textStyle: textTheme.fontHeader,
          ),
          InformationWrapper(
            title: localizations.educationAndQualifications,
            body: _getEducation(context),
            textStyle: textTheme.fontHeader,
          ),
          _getSkill(),
        ].withDivider(const Divider()).withVerticalElementsSpacing(20),
      ),
    );
  }

  Widget _getAboutMe(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: localizations.introductionPart1 + StringUtils.space,
            style: textTheme.fontRegular.copyWith(color: ColorConstants.black, fontFamily: AppConstants.defaultFont),
          ),
          TextSpan(
            text: localizations.university,
            style: textTheme.fontRegularBold.copyWith(
              color: ColorConstants.linkBlue,
              fontFamily: AppConstants.defaultFont,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri(scheme: "https", path: StringUtils.removeHttpsFromLink(AppConstants.universityLink))),
          ),
          TextSpan(
            text: StringUtils.space + localizations.introductionPart2,
            style: textTheme.fontRegular.copyWith(color: ColorConstants.black, fontFamily: AppConstants.defaultFont),
          ),
        ],
      ),
    );
  }

  Widget _getWorkExperience(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExperienceWidget(
          startDate: DateTime.utc(2022, 7),
          endDate: DateTime.utc(2022, 9),
          title: localizations.polytechnicsInternship,
          place: _getPlaceString(localizations.university, localizations.lublin),
          description: localizations.polytechnicsInternDetails,
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2023, 10),
          endDate: DateTime.utc(2023, 12),
          title: localizations.flutterIntern,
          place: _getPlaceString(localizations.paidwork, localizations.lublin),
          description: localizations.paidworkInternDetails,
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2024, 9),
          endDate: DateTime.utc(2025, 5),
          title: localizations.flutterIntern,
          place: _getPlaceString(localizations.ballSquad, localizations.warsaw),
          description: localizations.ballSquadInternDetails,
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2025, 5),
          endDate: null,
          title: localizations.flutterJunior,
          place: _getPlaceString(localizations.ballSquad, localizations.warsaw),
          description: localizations.ballSquadJuniorDetails,
        ),
      ].withVerticalElementsSpacing(10),
    );
  }

  String _getPlaceString(String place, String city) {
    return StringUtils.addCommaAtEnd(place) + city;
  }

  Widget _getEducation(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return Column(
      children: [
        ExperienceWidget(
          startDate: DateTime.utc(2018, 10),
          endDate: DateTime.utc(2022, 3),
          title: localizations.bachelorTitle,
          place: _getPlaceString(localizations.university, localizations.lublin),
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2022, 3),
          endDate: DateTime.utc(2023, 9),
          title: localizations.masterTitle,
          place: _getPlaceString(localizations.university, localizations.lublin),
        ),
      ].withVerticalElementsSpacing(10),
    );
  }

  Widget _getSkill() {
    final List<Skill> skills = Skill.values.where((Skill skill) => skill.isProgrammingSkill).toList();

    return Column(
      children: [
        for (Skill skill in skills) ...{SkillWidget(skill: skill, width: 500)},
      ].withVerticalElementsSpacing(15),
    );
  }
}
