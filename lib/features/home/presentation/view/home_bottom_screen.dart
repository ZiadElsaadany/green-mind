import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mind/features/home/presentation/controller/home_cubit.dart';
import 'package:green_mind/features/home/presentation/controller/home_states.dart';
import 'package:green_mind/features/home/presentation/view/widgets/nav_bar_widget.dart';

import '../../../../core/assets/images.dart';
import '../../../../core/assets/texts.dart';
import '../../../../core/widgets/appBar.dart';

class HomeBottomNavBarScreen extends StatelessWidget {
  const HomeBottomNavBarScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar(),
      body: BlocBuilder<HomeCubit,HomeStates>(builder: (c,state)=>
      context.read<HomeCubit>().screens[state.indexForBottomNavBar??0]
      ),
      bottomNavigationBar:const CustomBottomNavBar()
    );
  }
}
