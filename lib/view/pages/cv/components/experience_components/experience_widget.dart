import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/cubits/language/language_cubit.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/service_locator.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/formatted_utc_date_time.dart';
import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:cv/view/pages/cv/components/experience_components/bullet_list_widget.dart';
import 'package:flutter/material.dart';

class ExperienceWidget extends StatelessWidget {
  ExperienceWidget({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.place,
    this.descriptionPoints = const [],
  });

  final DateTime startDate;
  final DateTime? endDate;
  final String title;
  final String place;
  final List<String> descriptionPoints;
  final LanguageCubit _languageCubit = serviceLocator.get<LanguageCubit>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _getExperienceDescription(context)),
        _getExperienceDate(context),
      ],
    );
  }

  Widget _getExperienceDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getTitle(context),
        _getPlace(context),
        if (descriptionPoints.isNotEmpty) ...{const SizedBox(height: 5), BulletListWidget(points: descriptionPoints)},
      ].withVerticalElementsSpacing(5),
    );
  }

  Widget _getTitle(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Text(title, style: textTheme.fontRegularBold);
  }

  Widget _getPlace(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Text(place, style: textTheme.fontRegular.copyWith(color: ColorConstants.purplish));
  }

  Widget _getExperienceDate(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    final String formattedStartDate = FormattedUtcDateTime(
      AppConstants.dateFormatMonthTextYear,
      startDate,
      locale: _languageCubit.state.language.countryCode,
    ).toString();
    final String formattedEndDate = endDate != null
        ? FormattedUtcDateTime(
            AppConstants.dateFormatMonthTextYear,
            endDate!,
            locale: _languageCubit.state.language.countryCode,
          ).toString()
        : localizations.present;

    return Text(
      formattedStartDate + StringUtils.space + StringUtils.dash + StringUtils.space + formattedEndDate,
      style: textTheme.fontRegular,
    );
  }
}
