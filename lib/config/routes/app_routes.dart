import 'package:flutter/material.dart';
import 'package:pharmacy/core/utils/app_strings.dart';
import 'package:pharmacy/screens/splash/splash_screen.dart';
import 'package:pharmacy/screens/welcome/auth_welcome_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String authWelcomeScreen = '/AuthWelcomeScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: ((context) => const SplashScreen()));
      case Routes.authWelcomeScreen:
        return MaterialPageRoute(
          builder: ((context) => const AuthWelcomeScreen()),
        );

      // case Routes.notificationDetailesScreenRoute:
      //   final arguments = routeSettings.arguments as Map<String, dynamic>;
      //   final index = arguments['index'];
      //   return MaterialPageRoute(
      //     builder: ((context) => NotificationDetailesScreen(index: index)),
      //   );

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: ((context) =>
          const Scaffold(body: Center(child: Text(AppStrings.noRouteFound)))),
    );
  }
}
