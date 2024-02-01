import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/movie_screen.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/test.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/test_movies_screen.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/data_source/tv_remote_data_source.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/repository/tv_series_repository.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/repository/base_tv_series_repository.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_popular_tv_usecae.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_top_rated_tv_usecase.dart';
import 'package:flutter/material.dart';

void main() async {
  //ServiceLocator().init();
  BaseTvRemoteDataSource baseTvRemoteDataSource = TvRemoteDataSource();
  BaseTvSeriesRepository baseTvSeriesRepository =
      TvSeriesRepository(baseTvRemoteDataSource);
  final result= await GetTopRatedTvUseCase(baseTvSeriesRepository: baseTvSeriesRepository)
      .execute();
  print("result is");
  print(result);


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies App",
      debugShowCheckedModeBanner: false,
      home: test(),

      // MovieScreen(),
    );
  }
}
