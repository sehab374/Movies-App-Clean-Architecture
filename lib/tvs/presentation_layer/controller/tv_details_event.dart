part of 'tv_details_bloc.dart';

abstract class TvDetailsEvent extends Equatable {
  const TvDetailsEvent();
}

class GetTvDetailsEvent extends TvDetailsEvent {
  final int tvId;

  const GetTvDetailsEvent({required this.tvId});

  @override
  // TODO: implement props
  List<Object?> get props => [tvId];
}

class GetTvRecommendationEvent extends TvDetailsEvent {
  final int tvId;

  const GetTvRecommendationEvent({required this.tvId});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
