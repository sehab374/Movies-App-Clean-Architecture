part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  ////////////////////////////////////////////////1st event
  final MovieDetail? movieDetail;
  final RequestState movieDetailsState;
  final String movieDetailMessage;

  ////////////////////////////////////////////////2nd event
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailMessage = "",
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = "",
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        movieDetailMessage,
        recommendation,
        recommendationState,
        recommendationMessage
      ];

  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailMessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailMessage: movieDetailMessage ?? this.movieDetailMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }
}
