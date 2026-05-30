import "package:auto_route/auto_route.dart";
import "package:melodi/router/router.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Screen|Page,Route")
class AppRouter extends RootStackRouter {
  @override
  final List<AutoRoute> routes = [AutoRoute(page: HomeRoute.page, initial: true)];
}
