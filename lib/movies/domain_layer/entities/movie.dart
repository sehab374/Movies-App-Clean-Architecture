import 'dart:ffi';

import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAvarage;
  final Double releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.overview,
    required this.voteAvarage,
    required this.releaseDate,
  });

  @override
  List<Object?> get props =>
      [id, title, backdropPath, genreIds, overview, voteAvarage, releaseDate];
}
