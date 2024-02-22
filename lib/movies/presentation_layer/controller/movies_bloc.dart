import 'dart:async';
import 'package:clean_arch_movies_app/core/usecase/base_use_case.dart';
import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_now_playing_movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_popular_Movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_top_rated_movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_event.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvents, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRetedMoviesUsaCase getTopRetedMoviesUsaCase;

  ///initial state =obj from MovieState
  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase,
      this.getTopRetedMoviesUsaCase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    // final result = await getNowPlayingMoviesUseCase.execute();
    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              nowPlayingState: RequestState.error,
              nowPlayingMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              nowPlayingState: RequestState.loaded,
              nowPlayingMovie: r,
            )));
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    // final result = await getPopularMoviesUseCase.execute();
    final result = await getPopularMoviesUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              popularState: RequestState.error,
              popularMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              popularState: RequestState.loaded,
              popularMovie: r,
            )));
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRetedMoviesUsaCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              topRatedState: RequestState.error,
              topRatedMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              topRatedMovie: r,
              topRatedState: RequestState.loaded,
            )));
  }
}
// BaseMovieRemoteDataSource baseMovieRemoteDataSource =
//     MovieRemoteDataSource();
// BaseMovieRepository baseMovieRepository =
//     MovieRepository(baseMovieRemoteDataSource);
// final result =
//     await GetNowPlayingMoviesUseCase(baseMovieRepository).execute();
