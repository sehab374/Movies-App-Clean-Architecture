part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}
class HomeInitial extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomeChangeNavBar extends HomeState {
  final int index ;

  const HomeChangeNavBar({required this.index});

  @override
  List<Object> get props => [index];
}
