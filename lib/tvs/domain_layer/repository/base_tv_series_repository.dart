import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_recommendation_parameter.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_detail.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_recommendation.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_series.dart';
import 'package:dartz/dartz.dart';

abstract class BaseTvSeriesRepository {
  Future<Either<Failure, List<TvSeries>>> getOnAirTvSeries();

  Future<Either<Failure, List<TvSeries>>> getPopularTvSeries();

  Future<Either<Failure, List<TvSeries>>> getTopRatedTvSeries();

  Future<Either<Failure, TvDetail>> getTvDetails(
      TvDetailsParameters parameters);

  Future<Either<Failure, List<TvRecommendation>>> getTvRecommendation(
      TvRecommendationParameters parameters);
}
