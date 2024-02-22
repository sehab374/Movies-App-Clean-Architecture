import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_recommendation_parameter.dart';
import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_detail.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_recommendation.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_tv_details_use_case.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_tv_recommendation_use_case.dart';
import 'package:equatable/equatable.dart';

part 'tv_details_event.dart';

part 'tv_details_state.dart';

class TvDetailsBloc extends Bloc<TvDetailsEvent, TvDetailsState> {
  final GetTvDetailsUseCase getTvDetailsUseCase;
  final GetTvRecommendationUseCase getTvRecommendationUseCase;

  TvDetailsBloc(this.getTvDetailsUseCase, this.getTvRecommendationUseCase)
      : super(TvDetailsState()) {
    on<GetTvDetailsEvent>(_getTvDetails);
    on<GetTvRecommendationEvent>(_getRecommendation);
  }

  FutureOr<void> _getTvDetails(
      GetTvDetailsEvent event, Emitter<TvDetailsState> emit) async {
    final result =
        await getTvDetailsUseCase(TvDetailsParameters(tvId: event.tvId));

    result.forEach((r) {print(r.name);});

    result.fold(
        (l) => emit(state.copyWith(
              tvDetailState: RequestState.error,
              tvDetailMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              tvDetailState: RequestState.loaded,
              tvDetail: r,
            )));
  }

  FutureOr<void> _getRecommendation(
      GetTvRecommendationEvent event, Emitter<TvDetailsState> emit) async {
    final result = await getTvRecommendationUseCase(
        TvRecommendationParameters(tvId: event.tvId));

    result.fold(
        (l) => emit(state.copyWith(
              tvRecommendationState: RequestState.error,
              tvRecommendationMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              tvRecommendationState: RequestState.loaded,
              tvRecommendation: r,
            )));
  }
}
