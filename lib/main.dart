import 'package:clean_arch_movies_app/core/sevices/movie_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/recommendation_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/movies/data_layer/data_source/movie_remote_data_source.dart';
import 'package:clean_arch_movies_app/movies/data_layer/repository/movies_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_movie_details_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_recommendation_use_case.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/movie_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  ServiceLocator().init();

  // BaseMovieRemoteDataSource baseMovieRemoteDataSource = MovieRemoteDataSource();
  // BaseMovieRepository baseMovieRepository =
  //     MovieRepository(baseMovieRemoteDataSource);
  // final resultRec = await GetRecommendationUseCase(baseMovieRepository)
  //     .call(RecommendationParameter(866398));
  // final resultDetails = await GetMovieDatailsUseCase(baseMovieRepository)
  //     .call(MovieDetailsParameters(movieId: 866398));
  // print("result of recommendation");
  // print(resultRec);
  // print("result of details");
  // print(resultDetails);

  // List<TvSeries> tvList;
  // BaseTvRemoteDataSource baseTvRemoteDataSource = TvRemoteDataSource();
  // BaseTvSeriesRepository baseTvSeriesRepository =
  //     TvSeriesRepository(baseTvRemoteDataSource);
  // final result = await GetTopRatedTvUseCase(baseTvSeriesRepository).execute();
  // result.fold((l) => null, (r) {
  //   tvList = r;
  //   print("tvList");
  //   print(tvList);
  // });

  // print("result is");
  // print(result);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        backgroundColor: Colors.grey.shade900,
      ),
      title: "Movies App",
      debugShowCheckedModeBanner: false,
      home: MovieScreen(),
    );
  }
}
