part of 'tv_details_bloc.dart';

class TvDetailsState extends Equatable {
  final TvDetail? tvDetail;
  final RequestState tvDetailState;
  final String tvDetailMessage;
  final List<TvRecommendation> tvRecommendation;
  final RequestState tvRecommendationState;
  final String tvRecommendationMessage;

  const TvDetailsState({
    this.tvDetail,
    this.tvDetailState = RequestState.loading,
    this.tvDetailMessage = "",
    this.tvRecommendation = const [],
    this.tvRecommendationState = RequestState.loading,
    this.tvRecommendationMessage = "",
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        tvDetail,
        tvDetailMessage,
        tvDetailState,
        tvRecommendation,
        tvRecommendationState,
        tvRecommendationMessage,
      ];

  TvDetailsState copyWith({
    TvDetail? tvDetail,
    RequestState? tvDetailState,
    String? tvDetailMessage,
    List<TvRecommendation>? tvRecommendation,
    RequestState? tvRecommendationState,
    String? tvRecommendationMessage,
  }) =>
      TvDetailsState(
        tvDetail: tvDetail ?? this.tvDetail,
        tvDetailMessage: tvDetailMessage ?? this.tvDetailMessage,
        tvDetailState: tvDetailState ?? this.tvDetailState,
        tvRecommendation: tvRecommendation ?? this.tvRecommendation,
        tvRecommendationMessage:
            tvRecommendationMessage ?? this.tvRecommendationMessage,
        tvRecommendationState:
            tvRecommendationState ?? this.tvRecommendationState,
      );
}
