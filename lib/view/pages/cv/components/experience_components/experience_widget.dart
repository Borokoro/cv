import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/cubits/language/language_cubit.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/formatted_utc_date_time.dart';
import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.place,
    this.description,
  });

  final DateTime startDate;
  final DateTime? endDate;
  final String title;
  final String place;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_getExperienceDescription(context), _getExperienceDate(context, state)],
        );
      }
    );
  }

  Widget _getExperienceDescription(BuildContext context) {
    return Column(
      children: [
        _getTitle(context),
        _getPlace(context),
        if (description != null) ...{_getDescription(context), SizedBox(height: 5)},
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

  Widget _getDescription(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Text(description!, style: textTheme.fontRegular);
  }

  Widget _getExperienceDate(BuildContext context, LanguageState state) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    final String formattedStartDate = FormattedUtcDateTime(AppConstants.dateFormatMonthTextYear, startDate, locale: "en_US").toString();
    final String formattedEndDate = endDate != null
        ? FormattedUtcDateTime(AppConstants.dateFormatMonthTextYear, endDate!, locale: state.language.countryCode).toString()
        : localizations.present;

    return Text(
      formattedStartDate + StringUtils.space + StringUtils.longDash + StringUtils.space + formattedEndDate,
      style: textTheme.fontRegular,
    );
  }
}
