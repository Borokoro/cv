import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cv/constants/breakpoints.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/icon_constants.dart';
import 'package:cv/l10n/app_localizations.dart';
import 'package:cv/router/app_router.gr.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "LandingRoute")
class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  static const double _defaultNavigationMenuHeight = 60;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AutoTabsScaffold(
          lazyLoad: false,
          resizeToAvoidBottomInset: false,
          routes: [
            const CvRoute(),
            const ProjectsRoute(),
          ],
          bottomNavigationBuilder: Breakpoints.isWeb(context) ? null : _getMobileNavigationWidget,
        ),
      ],
    );
  }

  Widget _getMobileNavigationWidget(BuildContext context, TabsRouter tabsRouter) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        tabsRouter.setActiveIndex(0);
      },
      child: SizedBox(
        height: _defaultNavigationMenuHeight,
        child: BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstants.black,
          selectedItemColor: ColorConstants.white,
          unselectedItemColor: ColorConstants.white,
          selectedLabelStyle: textTheme.navigationMenuLabel,
          unselectedLabelStyle: textTheme.navigationMenuLabel,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(IconConstants.cvOutlined),
              activeIcon: const Icon(IconConstants.cvFilled),
              label: localizations.cv.toUpperCase(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(IconConstants.projectsOutlined),
              activeIcon: const Icon(IconConstants.projectsFilled),
              label: localizations.projects,
            ),
          ],
        ),
      ),
    );
  }
}

