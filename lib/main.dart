import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_mind/core/routing/app_routing.dart';
import 'package:green_mind/green_app.dart';

import 'features/add_score/presentation/controller/add_score_cubit.dart';

void main() async {
  runApp(BlocProvider(
    create: (c)=>AddScoreCubit(),
    child: GreenMindApp(
      appRoutes: AppRoutes(),
    ),
  ));
}
