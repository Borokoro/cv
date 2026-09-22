import 'package:auto_route/auto_route.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/style_constants.dart';
import 'package:cv/cubits/language/language_cubit.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/router/app_router.gr.dart';
import 'package:cv/service_locator.dart';
import 'package:cv/types/enum/language.dart';
import 'package:cv/utils/elements_spacing_extension.dart';
import 'package:cv/view/shared_components/app_bar/components/app_bar_text.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({super.key, this.isCvPage = true});

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
      title: Padding(
        padding: StyleConstants.edgeInsetsH20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(offset: const Offset(0, 3), child: _getLeadingWidget(context)),
            Transform.translate(offset: const Offset(0, 5), child: _getLanguageChange(context)),
          ],
        ),
      ),
    );
  }

  Widget _getLeadingWidget(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return AppBarText(
      onTap: () {
        if (isCvPage) {
          _goToProjectsPage(context);
        } else {
          _goToCvPage(context);
        }
      },
      text: isCvPage ? localizations.goToProjectsPage : localizations.goToCvPage,
      onHoverColor: ColorConstants.linkBlue,
    );
  }

  void _goToProjectsPage(BuildContext context) {
    AutoRouter.of(context).push(ProjectsRoute());
  }

  void _goToCvPage(BuildContext context) {
    AutoRouter.of(context).navigate(CvRoute());
  }

  Widget _getLanguageChange(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBarText(
          onTap: () => onChangeLanguageTap(Language.en),
          text: Language.en.locale,
          isChosen: _languageCubit.state.language == Language.en,
        ),
        AppBarText(
          onTap: () => onChangeLanguageTap(Language.pl),
          text: Language.pl.locale,
          isChosen: _languageCubit.state.language == Language.pl,
        ),
      ].withDivider(Container(color: ColorConstants.white, width: 4, height: 30)).withHorizontalElementsSpacing(15),
    );
  }

  void onChangeLanguageTap(Language language) {
    if (_languageCubit.state.language != language) {
      _languageCubit.switchLanguage(language: language);
    }
  }
}
