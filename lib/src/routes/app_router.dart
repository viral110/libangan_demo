import 'package:go_router/go_router.dart';
import 'package:libangan_mobile/src/app/custom_nav_bar/presentation/pages/custom_nav_bar_page.dart';
import 'package:libangan_mobile/src/app/splash/presentation/pages/splash_page.dart';
import 'package:libangan_mobile/src/routes/app_route_name.dart';


class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
        name: "/",
        path: AppRouteName.root,
    
    builder: (context, state) => const SplashPage()),
      GoRoute(
        name: "customNavBarPage",
        path: AppRouteName.customNavBarPage,
    
    builder: (context, state) => const CustomNavBarPage()),
  ]);
}
