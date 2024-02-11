import 'package:clean_arch_movies_app/core/error/exceptions.dart';
import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/movie_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/recommendation_parameter.dart';
import 'package:clean_arch_movies_app/movies/data_layer/data_source/movie_remote_data_source.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie_detail.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/recommendation.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class MovieRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();

    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRetedMovie();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameter p) async {
    final result = await baseMovieRemoteDataSource.getRecommendation(p);
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }
}
