import 'package:clean_arch_movies_app/movies/data_layer/data_source/movie_remote_data_source.dart';
import 'package:clean_arch_movies_app/movies/data_layer/repository/movies_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_now_playing_movies_usecase.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//List<Movie> movies = [];
//
// @override
// void initState() {
//   super.initState();
//   _getDate();
// }
// void _getDate() async {
//   BaseMovieRemoteDataSource baseMovieRemoteDataSource =
//       MovieRemoteDataSource();
//
//   BaseMovieRepository baseMovieRepository =
//       MovieRepository(baseMovieRemoteDataSource);
//
//   final result =
//       await GetNowPlayingMoviesUseCase(baseMovieRepository).execute();
//
//   result.fold((l) => null, (r) {
//     movies = r;
//   });
//   print(movies);
// }
