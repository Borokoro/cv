import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInformationWidget extends StatelessWidget {
  const PersonalInformationWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.isDescriptionLink = false,
    this.isDescriptionEmail = false,
    this.description2,
  });

  final IconData icon;
  final String title;
  final String description;
  final bool isDescriptionLink;
  final bool isDescriptionEmail;
  final String? description2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getPersonalInformationIcon(),
        Expanded(child: _getPersonalInformationBody(context)),
      ].withHorizontalElementsSpacing(20),
    );
  }

  Widget _getPersonalInformationIcon() {
    return Icon(icon, size: 30, color: ColorConstants.purplish);
  }

  Widget _getPersonalInformationBody(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: textTheme.fontRegularBold),
        _getDescriptionWidget(context),
      ],
    );
  }

  Widget _getDescriptionWidget(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    if (isDescriptionLink) {
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: description,
              style: textTheme.fontRegular.copyWith(
                color: ColorConstants.linkBlue,
                fontFamily: AppConstants.defaultFont,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchUrl(
                  Uri(
                    scheme: isDescriptionEmail ? 'mailto' : 'https',
                    host: isDescriptionEmail ? null : StringUtils.emptyString,
                    path: isDescriptionEmail ? description : StringUtils.removeHttpsFromLink(description),
                  ),
                ),
            ),
          ],
        ),
      );
    } else {
      if (description2 == null) {
        return Text(description, style: textTheme.fontRegular);
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description, style: textTheme.fontRegular),
            Text(description2!, style: textTheme.fontRegular),
          ].withVerticalElementsSpacing(4),
        );
      }
    }
  }
}
