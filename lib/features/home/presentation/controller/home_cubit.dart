import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_mind/features/home/presentation/view/widgets/home_screen_body.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit():super(HomeStates(status: HomeStatesEnum.initial));


  changeIndex( int index) {
    emit(state.copyWith(indexForBottomNavBar: index, status: HomeStatesEnum.changeIndex));
  }
  List<Widget>  screens =[
    HomeScreenBody(),
    HomeScreenBody(),
    HomeScreenBody(),
    HomeScreenBody(),
  ];

}