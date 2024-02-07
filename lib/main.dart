import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/movie_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  ServiceLocator().init();
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
      title: "Movies App",
      debugShowCheckedModeBanner: false,
      home: MovieScreen(),
    );
  }
}
