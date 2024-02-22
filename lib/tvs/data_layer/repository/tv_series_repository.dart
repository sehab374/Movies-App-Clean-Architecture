import 'package:clean_arch_movies_app/core/error/exceptions.dart';
import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_recommendation_parameter.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/data_source/tv_remote_data_source.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_detail.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_recommendation.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_series.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/repository/base_tv_series_repository.dart';
import 'package:dartz/dartz.dart';

class TvSeriesRepository extends BaseTvSeriesRepository {
  final BaseTvRemoteDataSource baseTvRemoteDataSource;

  TvSeriesRepository(this.baseTvRemoteDataSource);

  @override
  Future<Either<Failure, List<TvSeries>>> getPopularTvSeries() async {
    final result = await baseTvRemoteDataSource.getPopularTvSource();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<TvSeries>>> getTopRatedTvSeries() async {
    final result = await baseTvRemoteDataSource.getTopRatedTvSource();
    try {
      return Right(result);
    } on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<TvSeries>>> getOnAirTvSeries() async {
    final result = await baseTvRemoteDataSource.getOnAirTvSource();

    try {
      return Right(result);
    }
    //error=>is serverException
    on ServerException catch (error) {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, TvDetail>> getTvDetails(
      TvDetailsParameters parameters)async {
    final result=await baseTvRemoteDataSource.getTvDetails(parameters);
    try{
      return Right(result);
    }
    on ServerException catch (error)
    {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<TvRecommendation>>> getTvRecommendation(
      TvRecommendationParameters parameters)async {
    final result=await baseTvRemoteDataSource.getTvRecommendation(parameters);
    try{
      return Right(result);
    }
    on ServerException catch (error)
    {
      return Left(ServerFailure(error.errorMessageModel.statusMessage));
    }
  }
}
