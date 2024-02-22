import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_series.dart';

class TvSeriesModel extends TvSeries {
  const TvSeriesModel({
    required super.id,
    required super.voteAverage,
    required super.genreIds,
    super.backdropPath,
    required super.overview,
    required super.name,
    required super.firstAirDate,
  });

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) => TvSeriesModel(
        id: json["id"],
        voteAverage: json["vote_average"].toDouble(),
        genreIds: List<int>.from(json["genre_ids"]).map((e) => e).toList(),
        backdropPath:
            json["backdrop_path"] ?? "/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg",
        overview: json["overview"],
        name: json["name"],
        firstAirDate: json["first_air_date"],
      );
}