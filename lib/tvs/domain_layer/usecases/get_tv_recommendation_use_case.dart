import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_recommendation_parameter.dart';
import 'package:clean_arch_movies_app/core/usecase/base_use_case.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_recommendation.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/repository/base_tv_series_repository.dart';
import 'package:dartz/dartz.dart';

class GetTvRecommendationUseCase
    extends BaseUseCase<List<TvRecommendation>, TvRecommendationParameters> {
  final BaseTvSeriesRepository baseTvSeriesRepository;

  GetTvRecommendationUseCase(this.baseTvSeriesRepository);

  @override
  Future<Either<Failure, List<TvRecommendation>>> call(
      TvRecommendationParameters p) async {
    return baseTvSeriesRepository.getTvRecommendation(p);
  }
}
