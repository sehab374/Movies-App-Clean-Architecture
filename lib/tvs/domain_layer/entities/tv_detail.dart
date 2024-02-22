import 'package:clean_arch_movies_app/tvs/domain_layer/entities/seasons.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_genres.dart';
import 'package:equatable/equatable.dart';

class TvDetail extends Equatable {
  final String backdropPath;
  final List<TvGenres> genres;
  final List<Seasons> seasons;
  final int id;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final String overview;
  final String firstAirDate;
  final String lastAirDate;
  final List<int> episodeRunTime;
  final String name;
  final double voteAverage;

  const TvDetail({
    required this.backdropPath,
    required this.genres,
    required this.seasons,
    required this.id,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.overview,
    required this.firstAirDate,
    required this.lastAirDate,
    required this.episodeRunTime,
    required this.name,
    required this.voteAverage,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        backdropPath,
        genres,
        id,
        overview,
        voteAverage,
      ];
}
