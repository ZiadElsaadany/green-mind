import 'package:flutter/material.dart';
import 'package:green_mind/core/routing/app_routing.dart';
import 'package:green_mind/core/routing/routes.dart';

class GreenMindApp extends StatelessWidget {
  const GreenMindApp({super.key, required this.appRoutes});
  final AppRoutes appRoutes;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: appRoutes.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute:Routes.startApp
    );
  }
}
