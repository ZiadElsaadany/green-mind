

enum HomeStatesEnum {
  initial,
  changeIndex;
}
extension  HomeStatesX on HomeStates{

  bool get isChangedIndex => status == HomeStatesEnum.changeIndex;
}

class HomeStates{
  final int? indexForBottomNavBar;
  final HomeStatesEnum ? status ;

  HomeStates({ this.indexForBottomNavBar, required this.status});

  HomeStates copyWith(
  {    int? indexForBottomNavBar,
   HomeStatesEnum ? status ,
}
      ) {
    return HomeStates(status: status??this.status, indexForBottomNavBar: indexForBottomNavBar??this.indexForBottomNavBar);

  }




 }
