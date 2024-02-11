import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/usecase/base_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>,NoParameters> {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMovieRepository.getPopularMovies();
  }
}
