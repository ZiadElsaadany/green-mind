import '../../../home/presentation/controller/home_states.dart';

enum AddScoreStatus { initial, changeScore }
extension  AddScoreStateX on AddScoreStates{

  bool get changeAddScore => status == AddScoreStatus.changeScore;
}
class AddScoreStates {
  final AddScoreStatus? status;
  final String? score;

  AddScoreStates({required this.status, this.score});

  AddScoreStates copyWith({
    String? score,
    AddScoreStatus? status,
  }) {
    return AddScoreStates(
      status: status ?? this.status,
      score: score??this.score
    );
  }
}
