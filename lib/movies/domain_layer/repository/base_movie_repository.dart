import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';

abstract class BaseMovieRepository {

  Future<List<Movie>> getNowPlayingMovies();

  Future<List<Movie>> getPopularMovies();

  Future<List<Movie>> getTopRatedMovies();
  
}
