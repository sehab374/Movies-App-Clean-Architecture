part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeChangeNavBarEvent extends HomeEvent {
  final int currentIndex;

  const HomeChangeNavBarEvent({required this.currentIndex});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
