import 'package:clean_arch_movies_app/movies/data_layer/data_source/movie_remote_data_source.dart';
import 'package:clean_arch_movies_app/movies/data_layer/repository/movies_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_now_playing_movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_popular_Movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/use_cases/get_top_rated_movies_usecase.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_bloc.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/usecases/get_top_rated_tv_usecase.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    ///BLOC
    ///use registerFactory because we need to reload and rebuild of object of MovieBloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));

    ///USECASE
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRetedMoviesUsaCase(sl()));

    ///REPOSITORY
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));

    ///DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
