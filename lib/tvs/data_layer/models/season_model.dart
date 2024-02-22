import 'package:clean_arch_movies_app/tvs/domain_layer/entities/seasons.dart';

class SeasonModel extends Seasons {
  const SeasonModel({
    required super.airDate,
    required super.episodeCount,
    required super.id,
    required super.name,
    required super.overview,
    required super.posterPath,
    required super.seasonNumber,
    required super.voteAverage,
  });

  factory SeasonModel.fromJson(Map<String, dynamic> json) => SeasonModel(
        airDate: json["air_date"],
        episodeCount: json["episode_count"],
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        posterPath: json["poster_path"]?? "/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg",
        seasonNumber: json["season_number"],
        voteAverage: json["vote_average"],
      );
}
