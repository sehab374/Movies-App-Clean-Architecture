import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/movie_details_parameter.dart';
import 'package:clean_arch_movies_app/core/usecase/base_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie_detail.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetMovieDatailsUseCase extends BaseUseCase<MovieDetail, MovieDetailsParameters> {
  final BaseMovieRepository baseMovieRepository;

  GetMovieDatailsUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailsParameters p) async {
    return await baseMovieRepository.getMovieDetails(p);
  }
}
