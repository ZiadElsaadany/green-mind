import 'package:flutter/material.dart';
import 'package:green_mind/core/routing/routes.dart';
import 'package:green_mind/features/home/presentation/view/home_bottom_screen.dart';
import 'package:green_mind/features/start_app/presentation/view/start_screen.dart';

class AppRoutes {
  Route generateRoute(RouteSettings routeSettings) {
    // this arguments will be passed from the navigator like arguments as a ClassModel
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
       builder: (_)=> const HomeBottomNavBarScreen());
        case Routes.startApp:
        return MaterialPageRoute(
          builder: (_) => const StartScreen());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
