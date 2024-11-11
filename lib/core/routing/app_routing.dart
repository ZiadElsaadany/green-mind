import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_mind/core/routing/routes.dart';
import 'package:green_mind/features/add_score/presentation/controller/add_score_cubit.dart';
import 'package:green_mind/features/add_score/presentation/view/add_score_screen.dart';
import 'package:green_mind/features/home/presentation/controller/home_cubit.dart';
import 'package:green_mind/features/home/presentation/view/home_bottom_screen.dart';

class AppRoutes {
  Route generateRoute(RouteSettings routeSettings) {
    // this arguments will be passed from the navigator like arguments as a ClassModel
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.addScore:
        return MaterialPageRoute(builder: (c)=>const AddScoreScreen());
      case Routes.home:
        return MaterialPageRoute(
       builder: (_)=> BlocProvider(
           create: (_)=>HomeCubit(),
           child: const HomeBottomNavBarScreen()));
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
