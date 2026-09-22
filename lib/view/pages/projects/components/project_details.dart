import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/style_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/types/enum/project.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(flex: 2, child: _getTitleAndDescription(context)),
        Flexible(flex: 1, child: _getPhotoAndLink(context)),
      ],
    );
  }

  Widget _getTitleAndDescription(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_getTitle(context), Expanded(child: SingleChildScrollView(child: _getDescription(context)))].withVerticalElementsSpacing(20),
      ),
    );
  }

  Widget _getTitle(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Text(project.title, style: textTheme.fontHeaderProjects.copyWith(color: ColorConstants.white));
  }

  Widget _getDescription(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: StyleConstants.edgeInsetsL20,
      child: Text(
        project.getLocalizedDescription(localizations),
        style: textTheme.fontRegular.copyWith(color: ColorConstants.white),
      ),
    );
  }

  Widget _getPhotoAndLink(BuildContext context) {
    final bool hasProjectAssetLink = project.assetLink != null;
    return SizedBox.expand(
      child: Padding(
        padding: StyleConstants.edgeInsetsL20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: hasProjectAssetLink ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            if (hasProjectAssetLink) ...{Expanded(child: _getPhoto())},
            _getLink(context),
          ].withVerticalElementsSpacing(80),
        ),
      ),
    );
  }

  Widget _getPhoto() {
    return Align(alignment: Alignment.topRight, child: Padding(
      padding: StyleConstants.edgeInsetsT80,
      child: Image(fit: BoxFit.contain, image: AssetImage(project.assetLink!)),
    ));
  }

  Widget _getLink(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: localizations.gotToProject,
            style: textTheme.fontRegular.copyWith(
              color: ColorConstants.skyBlue,
              decoration: TextDecoration.underline,
              fontFamily: AppConstants.defaultFont,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launchUrl(Uri(scheme: "https", host: StringUtils.emptyString, path: StringUtils.removeHttpsFromLink(project.link))),
          ),
        ],
      ),
    );
  }
}
