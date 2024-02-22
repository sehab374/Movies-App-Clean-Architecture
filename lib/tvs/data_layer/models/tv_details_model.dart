import 'package:clean_arch_movies_app/tvs/data_layer/models/season_model.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/models/tv_genres_model.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_detail.dart';

class TvDetailsModel extends TvDetail {
  const TvDetailsModel({
    required super.backdropPath,
    required super.genres,
    required super.seasons,
    required super.id,
    required super.numberOfEpisodes,
    required super.numberOfSeasons,
    required super.overview,
    required super.firstAirDate,
    required super.lastAirDate,
    required super.episodeRunTime,
    required super.name,
    required super.voteAverage,
  });

  factory TvDetailsModel.fromJson(Map<String, dynamic> json) => TvDetailsModel(
        backdropPath: json["backdrop_path"],
        genres: List<TvGenresModel>.from(
            json["genres"].map((e) => TvGenresModel.fromJson(e))),
        seasons: List<SeasonModel>.from(
            json["seasons"].map((e) => SeasonModel.fromJson(e))),
        id: json["id"],
        numberOfEpisodes: json["number_of_episodes"],
        numberOfSeasons: json["number_of_seasons"],
        overview: json["overview"],
        firstAirDate: json["first_air_date"],
        lastAirDate: json["last_air_date"],
        episodeRunTime: List<int>.from(json["episode_run_time"].map((e) => e)),
        name: json["name"],
        voteAverage: json["vote_average"].toDouble(),
      );
}
