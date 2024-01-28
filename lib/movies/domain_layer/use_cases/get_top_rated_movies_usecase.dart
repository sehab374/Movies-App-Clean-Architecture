import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetTopRetedMoviesUsaCase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRetedMoviesUsaCase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
