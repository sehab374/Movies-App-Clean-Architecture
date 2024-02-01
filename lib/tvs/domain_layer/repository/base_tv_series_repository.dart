import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_series.dart';
import 'package:dartz/dartz.dart';

abstract class BaseTvSeriesRepository {

  Future<Either<Failure, List<TvSeries>>> getPopularTvSeries();

  Future<Either<Failure, List<TvSeries>>> getTopRatedTvSeries();

}
