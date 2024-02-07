import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_series.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/repository/base_tv_series_repository.dart';
import 'package:dartz/dartz.dart';

class GetPopularTvUseCase {
  final BaseTvSeriesRepository baseTvSeriesRepository;

  GetPopularTvUseCase(this.baseTvSeriesRepository);

  Future<Either<Failure, List<TvSeries>>> execute() async {
    return await baseTvSeriesRepository.getPopularTvSeries();
  }
}
