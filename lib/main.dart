import 'package:clean_arch_movies_app/core/sevices/movie_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/recommendation_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_recommendation_parameter.dart';
import 'package:clean_arch_movies_app/layout/home_screen.dart';
import 'package:clean_arch_movies_app/movies/data_layer/data_source/movie_remote_data_source.dart';
import 'package:clean_arch_movies_app/movies/data_layer/repository/movies_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_movie_details_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_recommendation_use_case.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/movie_screen.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/data_source/tv_remote_data_source.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/models/tv_details_model.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/repository/tv_series_repository.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_series.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/repository/base_tv_series_repository.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_on_air_tv_usecase.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_popular_tv_usecae.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_top_rated_tv_usecase.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_tv_details_use_case.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_tv_recommendation_use_case.dart';
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
  // // final resultTop =
  // //     await GetTopRatedTvUseCase(baseTvSeriesRepository).execute();
  // // final resultOn = await GetOnAirTvUseCase(baseTvSeriesRepository).excute();
  // // final resultPopular =
  // //     await GetPopularTvUseCase(baseTvSeriesRepository).execute();
  //
  // final resultdetails = await GetTvDetailsUseCase(baseTvSeriesRepository)
  //     .call(TvDetailsParameters(tvId: 59941));
  // final resultRecommendation =
  //     await GetTvRecommendationUseCase(baseTvSeriesRepository)
  //         .call(TvRecommendationParameters(tvId: 59941));

  // resultTop.fold((l) => null, (r) {
  //   tvList = r;
  //   print("tvList");
  //   print(tvList);
  // });
  //
  // print("result is");
  // print(resultTop);

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
        home: HomeScreen()
        //MovieScreen(),
        );
  }
}
