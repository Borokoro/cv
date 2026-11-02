import 'package:auto_route/auto_route.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/assets_constants.dart';
import 'package:cv/constants/breakpoints.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/style_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/types/enum/skill.dart';
import 'package:cv/types/enum/skill_category.dart';
import 'package:cv/types/models/personal_information.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:cv/view/pages/cv/components/experience_components/experience_widget.dart';
import 'package:cv/view/pages/cv/components/information_wrapper.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/name_and_photo_widget.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/personal_information_widget.dart';
import 'package:cv/view/pages/cv/components/skill_components/skill_category_widget.dart';
import 'package:cv/view/pages/cv/components/skill_components/skill_widget.dart';
import 'package:cv/view/shared_components/app_bar/app_bar_widget.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage(name: "CvRoute")
class CvPage extends StatelessWidget {
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Breakpoints.isWeb(context) ? _getCVPageBodyWeb(context) : _getCVPageBodyMobile(context),
        ),
      ),
    );
  }

  Widget _getCVPageBodyWeb(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 1, child: _getPersonalInformationBody(context)),
          Flexible(flex: 2, child: _getExperienceBody(context)),
        ],
      ),
    );
  }

  Widget _getCVPageBodyMobile(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_getPersonalInformationBody(context), _getExperienceBody(context)],
      ),
    );
  }

  Widget _getPersonalInformationBody(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      color: ColorConstants.brightGray,
      child: Column(
        children: [
          const NameAndPhotoWidget(),
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
              body: _getLanguagesColumn(),
              textStyle: textTheme.fontHeader,
            ),
          ),
          Padding(
            padding: StyleConstants.edgeInsetsH40B40,
            child: InformationWrapper(
              title: localizations.skills,
              body: _getSkillsColumn(),
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
          title: localizations.address,
          description: StringUtils.addCommaAtEnd(pi.addressStreet) + pi.addressPostalCode + StringUtils.space + pi.city,
        ),
        PersonalInformationWidget(title: localizations.phoneNumber, description: pi.phoneNumber),
        PersonalInformationWidget(
          title: localizations.email,
          description: pi.email,
          isDescriptionEmail: true,
          isDescriptionLink: true,
        ),
        PersonalInformationWidget(title: localizations.dateOfBirth, description: pi.formattedDateOfBirth),
        PersonalInformationWidget(
          title: localizations.github,
          description: pi.githubLabel,
          link: pi.github,
          isDescriptionLink: true,
        ),
        PersonalInformationWidget(
          title: localizations.linkedIn,
          description: pi.linkedInLabel,
          link: pi.linkedIn,
          isDescriptionLink: true,
        ),
        PersonalInformationWidget(
          title: localizations.onlineCvAndPortfolio,
          description: pi.onlineCvLabel,
          link: pi.onlineCv,
          isDescriptionLink: true,
        ),
      ].withVerticalElementsSpacing(10),
    );
  }

  Widget _getLanguagesColumn() {
    final List<Skill> languages = Skill.getSkillsByCategory(SkillCategory.language);

    return Column(
      children: [for (Skill language in languages) SkillWidget(skill: language)].withVerticalElementsSpacing(10),
    );
  }

  Widget _getSkillsColumn() {
    final List<SkillCategory> categories = SkillCategory.values
        .where((SkillCategory category) => category != SkillCategory.language)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (SkillCategory category in categories) SkillCategoryWidget(category: category),
      ].withVerticalElementsSpacing(20),
    );
  }

  Widget _getExperienceBody(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: StyleConstants.edgeInsets40,
      color: ColorConstants.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...[
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
          ].withDivider(const Divider()),
          Align(alignment: Alignment.centerRight, child: _getPdfLink(context)),
        ].withVerticalElementsSpacing(20),
      ),
    );
  }

  Widget _getAboutMe(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(localizations.flutterDeveloper, style: textTheme.fontJobTitle.copyWith(color: ColorConstants.purplish)),
        Text(localizations.summaryPart1, style: textTheme.fontRegular),
        Text(localizations.summaryPart2, style: textTheme.fontRegular),
      ].withVerticalElementsSpacing(10),
    );
  }

  Widget _getWorkExperience(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExperienceWidget(
          startDate: DateTime.utc(2026, 10),
          endDate: null,
          title: localizations.flutterDeveloper,
          place: _getPlaceString(localizations.mapMaker, localizations.lodz),
          descriptionPoints: [
            localizations.mapMakerDetails1,
            localizations.mapMakerDetails2,
            localizations.mapMakerDetails3,
            localizations.mapMakerDetails4,
          ],
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2025, 5),
          endDate: DateTime.utc(2026, 8),
          title: localizations.flutterJunior,
          place: _getPlaceString(localizations.ballSquad, localizations.warsaw),
          descriptionPoints: [
            localizations.ballSquadJuniorDetails1,
            localizations.ballSquadJuniorDetails2,
            localizations.ballSquadJuniorDetails3,
            localizations.ballSquadJuniorDetails4,
            localizations.ballSquadJuniorDetails5,
          ],
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2024, 9),
          endDate: DateTime.utc(2025, 5),
          title: localizations.flutterIntern,
          place: _getPlaceString(localizations.ballSquad, localizations.warsaw),
          descriptionPoints: [localizations.ballSquadInternDetails1, localizations.ballSquadInternDetails2],
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2023, 10),
          endDate: DateTime.utc(2023, 12),
          title: localizations.flutterIntern,
          place: _getPlaceString(localizations.paidwork, localizations.lublin),
          descriptionPoints: [localizations.paidworkInternDetails],
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2022, 7),
          endDate: DateTime.utc(2022, 9),
          title: localizations.polytechnicsInternship,
          place: _getPlaceString(localizations.university, localizations.lublin),
          descriptionPoints: [localizations.polytechnicsInternDetails],
        ),
      ].withVerticalElementsSpacing(20),
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
          startDate: DateTime.utc(2022, 3),
          endDate: DateTime.utc(2023, 9),
          title: localizations.masterTitle,
          place: _getPlaceString(localizations.university, localizations.lublin),
        ),
        ExperienceWidget(
          startDate: DateTime.utc(2018, 10),
          endDate: DateTime.utc(2022, 3),
          title: localizations.bachelorTitle,
          place: _getPlaceString(localizations.university, localizations.lublin),
        ),
      ].withVerticalElementsSpacing(20),
    );
  }

  Widget _getPdfLink(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return RichText(
      text: TextSpan(
        text: localizations.goToPdfVersion,
        style: textTheme.fontRegular.copyWith(
          color: ColorConstants.linkBlue,
          decoration: TextDecoration.underline,
          fontFamily: AppConstants.defaultFont,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () => launchUrl(
            Uri(path: _getPathToPdfFile(AssetsConstants.cvPdfVersion)),
            webViewConfiguration: WebViewConfiguration(),
          ),
      ),
    );
  }

  String _getPathToPdfFile(String text) {
    if (foundation.kReleaseMode) {
      return StringUtils.assets + text;
    } else {
      return text;
    }
  }
}
