import 'package:flutter/material.dart';
import 'package:quarbani_user_app/app/routes/routes_names.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/welcome/presentation/pages/welcome_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {


      case RouteNames.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
        );

      case RouteNames.dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardPage(),
        );

        case RouteNames.welcome:
      default:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );

    }
  }
}