import 'package:clean_arch_movies_app/movies/domain_layer/entities/genres.dart';
import 'package:equatable/equatable.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final List<Genres> genres;
  final int id;
  final String overview;
  final String releaseDate;
  final int runtime;
  final String title;
  final double voteAverage;

  const MovieDetail({
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        backdropPath,
        genres,
        id,
        overview,
        releaseDate,
        runtime,
        title,
        voteAverage,
      ];
}
