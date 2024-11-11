import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_score_state.dart';

class AddScoreCubit extends Cubit<AddScoreStates> {
  AddScoreCubit() : super(AddScoreStates(
    status: AddScoreStatus.initial
  ));

  void changeScore(String score){
    emit(state.copyWith(
        score: score,
        status: AddScoreStatus.changeScore));
  }
}
