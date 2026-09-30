// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:cv/view/pages/cv/cv_page.dart' as _i1;
import 'package:cv/view/pages/landing_page/landing_page.dart' as _i2;
import 'package:cv/view/pages/projects/projects_page.dart' as _i3;

/// generated route for
/// [_i1.CvPage]
class CvRoute extends _i4.PageRouteInfo<void> {
  const CvRoute({List<_i4.PageRouteInfo>? children})
    : super(CvRoute.name, initialChildren: children);

  static const String name = 'CvRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CvPage();
    },
  );
}

/// generated route for
/// [_i2.LandingPage]
class LandingRoute extends _i4.PageRouteInfo<void> {
  const LandingRoute({List<_i4.PageRouteInfo>? children})
    : super(LandingRoute.name, initialChildren: children);

  static const String name = 'LandingRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.LandingPage();
    },
  );
}

/// generated route for
/// [_i3.ProjectsPage]
class ProjectsRoute extends _i4.PageRouteInfo<void> {
  const ProjectsRoute({List<_i4.PageRouteInfo>? children})
    : super(ProjectsRoute.name, initialChildren: children);

  static const String name = 'ProjectsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProjectsPage();
    },
  );
}
