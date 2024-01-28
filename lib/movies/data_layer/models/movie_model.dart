import 'dart:convert';

import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genreIds,
      required super.overview,
      required super.voteAvarage,
      required super.releaseDate});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json["id"],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      genreIds: List<int>.from(json["genre_ids"]).map((e) => e).toList(),
      overview: json["overview"],
      voteAvarage: json["vote_average"].toDouble(),
      releaseDate: json["release_date"]);
}
