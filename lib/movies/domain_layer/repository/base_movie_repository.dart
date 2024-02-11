import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/movie_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/recommendation_parameter.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie_detail.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/recommendation.dart';
import 'package:dartz/dartz.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetail>> getMovieDetails(
      MovieDetailsParameters parameters);

  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameter parameter);
}
