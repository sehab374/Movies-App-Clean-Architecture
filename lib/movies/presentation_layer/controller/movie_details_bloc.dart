import 'dart:async';

import 'package:clean_arch_movies_app/core/sevices/movie_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/recommendation_parameter.dart';
import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie_detail.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/recommendation.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_movie_details_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_recommendation_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDatailsUseCase getMovieDatailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;

  MovieDetailsBloc(this.getMovieDatailsUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getMovieRecommendation);
  }

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    ///////////////////////////////////////////////////////////////////////////sent parameter by event
    final result =
        await getMovieDatailsUseCase(MovieDetailsParameters(movieId: event.id));
    result.fold(
        (l) => emit(state.copyWith(
              movieDetailMessage: l.message,
              movieDetailsState: RequestState.error,
            )),
        (r) => emit(state.copyWith(
              movieDetailsState: RequestState.loaded,
              movieDetail: r,
            )));
  }

  FutureOr<void> _getMovieRecommendation(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result =
        await getRecommendationUseCase(RecommendationParameter(event.id));
    // MovieDetailsParameters(movieId: event.id)
    result.fold(
        (l) => emit(state.copyWith(
              recommendationMessage: l.message,
              recommendationState: RequestState.error,
            )),
        (r) => emit(state.copyWith(
              recommendationState: RequestState.loaded,
              recommendation: r,
            )));
  }
}
