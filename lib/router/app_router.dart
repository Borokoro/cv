
import 'package:auto_route/auto_route.dart';
import 'package:cv/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter{
  AppRouter();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LandingRoute.page,
    initial: true,
    path: "/",
    children: [
      AutoRoute(initial: true, path: "cv", page:CvRoute.page),
      AutoRoute(page: ProjectsRoute.page, path: "projects"),
    ]),
  ];
}