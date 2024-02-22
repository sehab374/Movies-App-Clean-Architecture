import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_details_parameter.dart';
import 'package:clean_arch_movies_app/core/usecase/base_use_case.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_detail.dart';
import 'package:clean_arch_movies_app/tvs/domain_layer/repository/base_tv_series_repository.dart';
import 'package:dartz/dartz.dart';

class GetTvDetailsUseCase extends BaseUseCase<TvDetail, TvDetailsParameters> {
  final BaseTvSeriesRepository baseTvSeriesRepository;

  GetTvDetailsUseCase(this.baseTvSeriesRepository);

  @override
  Future<Either<Failure, TvDetail>> call(TvDetailsParameters p) async {
    return await baseTvSeriesRepository.getTvDetails(p);
  }
}
