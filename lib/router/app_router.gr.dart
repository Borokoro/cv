// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:cv/view/pages/cv/cv_page.dart' as _i1;
import 'package:cv/view/pages/projects/projects_page.dart' as _i2;

/// generated route for
/// [_i1.CvPage]
class CvRoute extends _i3.PageRouteInfo<void> {
  const CvRoute({List<_i3.PageRouteInfo>? children})
    : super(CvRoute.name, initialChildren: children);

  static const String name = 'CvRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.CvPage();
    },
  );
}

/// generated route for
/// [_i2.ProjectsPage]
class ProjectsRoute extends _i3.PageRouteInfo<void> {
  const ProjectsRoute({List<_i3.PageRouteInfo>? children})
    : super(ProjectsRoute.name, initialChildren: children);

  static const String name = 'ProjectsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProjectsPage();
    },
  );
}
