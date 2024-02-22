import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {

    //function (_onHomeChangeNavBarEvent) excute when Bloc.add(HomeChangeNavBarEvent)
    on<HomeChangeNavBarEvent>(_onHomeChangeNavBarEvent);
  }

  FutureOr<void> _onHomeChangeNavBarEvent(
      HomeChangeNavBarEvent event, Emitter<HomeState> emit) {

    emit(HomeChangeNavBar(index: event.currentIndex));
  }
}
