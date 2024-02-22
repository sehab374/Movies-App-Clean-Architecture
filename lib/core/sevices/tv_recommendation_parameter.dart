import 'package:equatable/equatable.dart';

class TvRecommendationParameters extends Equatable {
  final int tvId;

  const TvRecommendationParameters({required this.tvId});

  @override
  // TODO: implement props
  List<Object?> get props => [tvId];
}
