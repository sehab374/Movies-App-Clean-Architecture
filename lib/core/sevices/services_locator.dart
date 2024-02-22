import 'package:clean_arch_movies_app/movies/data_layer/data_source/movie_remote_data_source.dart';
import 'package:clean_arch_movies_app/movies/data_layer/repository/movies_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_movie_details_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_now_playing_movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_popular_Movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_recommendation_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_top_rated_movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movie_details_bloc.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_bloc.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/data_source/tv_remote_data_source.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/repository/tv_series_repository.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/repository/base_tv_series_repository.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_on_air_tv_usecase.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_popular_tv_usecae.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_top_rated_tv_usecase.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_tv_details_use_case.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_tv_recommendation_use_case.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/controller/tv_details_bloc.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/controller/tv_series_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    ///BLOC
    ///use registerFactory because we need to reload and rebuild of object of MovieBloc

    ///1=>sl()=>GetNowPlayingMoviesUseCase
    ///2=>sl()=>GetPopularMoviesUseCase
    ///3=>sl()=>GetTopRetedMoviesUsaCase
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));

    ///1=>sl()=>GetMovieDatailsUseCase
    ///2=>sl()=>GetRecommendationUseCase
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

    ///////////////////////////////////////////////////////////test bloc

    sl.registerFactory(() => TvSeriesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => TvDetailsBloc(sl(), sl()));

    ///USECASE
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRetedMoviesUsaCase(sl()));
    sl.registerLazySingleton(() => GetMovieDatailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));
    /////////test USECASE
    sl.registerLazySingleton(() => GetOnAirTvUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularTvUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedTvUseCase(sl()));

    sl.registerLazySingleton(() => GetTvDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetTvRecommendationUseCase(sl()));

    ///REPOSITORY
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));
    /////////test REPOSITORY
    sl.registerLazySingleton<BaseTvSeriesRepository>(
        () => TvSeriesRepository(sl()));

    ///DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
    /////////test DATA SOURCE
    sl.registerLazySingleton<BaseTvRemoteDataSource>(
        () => TvRemoteDataSource());
  }
}
