import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/movie_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/recommendation_parameter.dart';
import 'package:clean_arch_movies_app/core/usecase/base_use_case.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/recommendation.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetRecommendationUseCase
    extends BaseUseCase<List<Recommendation>, RecommendationParameter> {
  final BaseMovieRepository baseMovieRepository;

  GetRecommendationUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameter parameters) async{
    return await baseMovieRepository.getRecommendation(parameters);

  }
}
