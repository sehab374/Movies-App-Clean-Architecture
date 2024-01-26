import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';

class GetTopRetedMoviesUsaCase {
  BaseMovieRepository baseMovieRepository;

  GetTopRetedMoviesUsaCase(this.baseMovieRepository);

  Future<List<Movie>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
