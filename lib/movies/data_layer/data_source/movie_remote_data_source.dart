import 'package:clean_arch_movies_app/core/Movie_network/api_constants.dart';
import 'package:clean_arch_movies_app/core/Movie_network/error_message_model.dart';
import 'package:clean_arch_movies_app/core/error/exceptions.dart';
import 'package:clean_arch_movies_app/movies/data_layer/models/movie_model.dart';
import 'package:dio/dio.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> getTopRetedMovie();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstants.nowPlayingMoviesPath);

    // print("response");
    // print(response);
    if (response.statusCode == 200) {
      return List.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));

      // return List.from(
      //     (response.data as List).map((e) => ErrorMessageModel.fromJson(e)));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(ApiConstants.popularMoviesPath);
    if (response.statusCode == 200) {
      return List.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRetedMovie() async {
    final response = await Dio().get(ApiConstants.TopRatedMoviesPath);
    if (response.statusCode == 200) {
      return List.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
