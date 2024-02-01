import 'package:clean_arch_movies_app/core/Movie_network/api_constants.dart';
import 'package:clean_arch_movies_app/core/Movie_network/error_message_model.dart';
import 'package:clean_arch_movies_app/core/error/exceptions.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/models/tv_series_model.dart';
import 'package:dio/dio.dart';

abstract class BaseTvRemoteDataSource {
  Future<List<TvSeriesModel>> getPopularTvSource();

  Future<List<TvSeriesModel>> getTopRatedTvSource();
}

class TvRemoteDataSource extends BaseTvRemoteDataSource {
  @override
  Future<List<TvSeriesModel>> getPopularTvSource() async {
    final response = await Dio().get(ApiConstants.popularTvPath);
    print("response______________________________TvRemoteDataSource");
    print(response);
    if (response.statusCode == 200) {
      return List.from((response.data["results"] as List)
          .map((element) => TvSeriesModel.fromJson(element)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<TvSeriesModel>> getTopRatedTvSource() async {
    final response = await Dio().get(ApiConstants.topRatedTvPath);
    print("response___________________________++++++++getTopRatedTvSource");
    print(response);
    if (response.statusCode == 200) {
      return List.from((response.data["results"] as List)
          .map((element) => TvSeriesModel.fromJson(element)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
