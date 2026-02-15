import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/features/login/presentation/login_view.dart';
import 'package:flutter_advanced/features/onboarding/presentation/onboarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingView:
        return MaterialPageRoute(builder: (_) => OnboardingView());

      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => LoginView());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
