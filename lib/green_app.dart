import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_mind/core/routing/app_routing.dart';
import 'package:green_mind/core/routing/routes.dart';

class GreenMindApp extends StatelessWidget {
  const GreenMindApp({super.key, required this.appRoutes});
  final AppRoutes appRoutes;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          onGenerateRoute: appRoutes.generateRoute,
          debugShowCheckedModeBanner: false,
          initialRoute:Routes.home
      ),
    );
  }
}
