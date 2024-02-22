import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_series.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_on_air_tv_usecase.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_popular_tv_usecae.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_top_rated_tv_usecase.dart';
import 'package:equatable/equatable.dart';

part 'tv_series_event.dart';

part 'tv_series_state.dart';

class TvSeriesBloc extends Bloc<TvSeriesEvent, TvSeriesState> {
  final GetOnAirTvUseCase getOnAirTvUseCase;

  final GetPopularTvUseCase getPopularTvUseCase;
  final GetTopRatedTvUseCase getTopRatedTvUseCase;

  TvSeriesBloc(
    this.getOnAirTvUseCase,
    this.getPopularTvUseCase,
    this.getTopRatedTvUseCase,
  ) : super(TvSeriesState()) {
    // on<TvSeriesEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
    //_getNowPlayingMovies
    on<GetOnAirTvEvent>(_getOnAirTvSeries);
    on<GetTopRatedTvEvent>(_getTopRatedTvSeries);
    on<GetPopularTvEvent>(_getPopularTvSeries);
  }

  FutureOr<void> _getOnAirTvSeries(
      GetOnAirTvEvent event, Emitter<TvSeriesState> emit) async {
    final result = await getOnAirTvUseCase.excute();
    result.fold(
        (l) => emit(state.copyWith(
            onAirTvState: RequestState.error, onAirTvMessage: l.message)),
        (r) => emit(state.copyWith(
            onAirTvState: RequestState.loaded, onAirTvSeries: r)));
  }

  FutureOr<void> _getTopRatedTvSeries(
      GetTopRatedTvEvent event, Emitter<TvSeriesState> emit) async {
    final result = await getTopRatedTvUseCase.execute();
    result.fold(
        (l) => emit(state.copyWith(
            topRatedTvState: RequestState.error, topRatedTvMessage: l.message)),
        (r) => emit(state.copyWith(
            topRatedTvState: RequestState.loaded, topRatedTvSeries: r)));
  }

  FutureOr<void> _getPopularTvSeries(
      GetPopularTvEvent event, Emitter<TvSeriesState> emit) async {
    final result = await getPopularTvUseCase.execute();
    result.fold(
        (l) => emit(state.copyWith(
            popularTvState: RequestState.error, popularTvMessage: l.message)),
        (r) => emit(state.copyWith(
            popularTvState: RequestState.loaded, popularTvSeries: r)));
  }
}
