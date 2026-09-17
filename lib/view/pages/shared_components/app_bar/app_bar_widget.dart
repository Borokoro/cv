import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/style_constants.dart';
import 'package:cv/cubits/language/language_cubit.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/service_locator.dart';
import 'package:cv/types/enum/language.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:cv/view/pages/shared_components/app_bar/components/app_bar_text.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({
    super.key,
    required this.title,
    this.isCvPage = true,
  });

  final String title;
  final bool isCvPage;

  static const double _appbarHeight = 70;
  final LanguageCubit _languageCubit = serviceLocator.get<LanguageCubit>();

  @override
  Size get preferredSize => const Size.fromHeight(_appbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: ColorConstants.black,
      surfaceTintColor: ColorConstants.white,
      titleSpacing: 0,
      title: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: StyleConstants.edgeInsetsL20,
              child: Transform.translate(offset: const Offset(0, 3), child: _getLeadingWidget(context)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Transform.translate(
              offset: const Offset(0, 5),
              child: _getAppbarContent(context),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: StyleConstants.edgeInsetsR20,
              child: Transform.translate(offset: const Offset(0, 5), child: _getLanguageChange(context)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getLeadingWidget(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return AppBarText(
      onTap: () {},
      text: localizations.goToProjectsPage,
      onHoverColor: ColorConstants.linkBlue,
    );
  }

  Widget _getAppbarContent(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Text(
      title,
      style: textTheme.fontHeader.copyWith(
        color: ColorConstants.white,
      ),
    );
  }

  Widget _getLanguageChange(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBarText(onTap: () => onChangeLanguageTap(Language.en), text: Language.en.locale, isChosen: _languageCubit.state.language == Language.en,),
        AppBarText(onTap: () => onChangeLanguageTap(Language.pl), text: Language.pl.locale, isChosen: _languageCubit.state.language == Language.pl,),
      ].withDivider(Container(color: ColorConstants.white, width: 4, height: 30,)).withHorizontalElementsSpacing(15),
    );
  }

  void onChangeLanguageTap(Language language) {
    if(_languageCubit.state.language != language) {
      _languageCubit.switchLanguage(language: language);
    }
  }
}