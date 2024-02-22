import 'package:clean_arch_movies_app/core/Movie_network/api_constants.dart';
import 'package:clean_arch_movies_app/core/Movie_network/error_message_model.dart';
import 'package:clean_arch_movies_app/core/error/exceptions.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_details_parameter.dart';
import 'package:clean_arch_movies_app/core/sevices/tv_recommendation_parameter.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/models/tv_details_model.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/models/tv_recommendation_model.dart';
import 'package:clean_arch_movies_app/tvs/data_layer/models/tv_series_model.dart';
import 'package:dio/dio.dart';

abstract class BaseTvRemoteDataSource {
  Future<List<TvSeriesModel>> getPopularTvSource();

  Future<List<TvSeriesModel>> getTopRatedTvSource();

  Future<List<TvSeriesModel>> getOnAirTvSource();

  Future<TvDetailsModel> getTvDetails(TvDetailsParameters parameters);

  Future<List<TvRecommendationModel>> getTvRecommendation(
      TvRecommendationParameters parameters);
}

class TvRemoteDataSource extends BaseTvRemoteDataSource {
  @override
  Future<List<TvSeriesModel>> getPopularTvSource() async {
    final response = await Dio().get(ApiConstants.popularTvPath);
    // print("response______________________________TvRemoteDataSource");
    // print(response);
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
    // print("response___________________________++++++++getTopRatedTvSource");
    // print(response);
    if (response.statusCode == 200) {
      return List.from((response.data["results"] as List)
          .map((element) => TvSeriesModel.fromJson(element)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<TvSeriesModel>> getOnAirTvSource() async {
    final response = await Dio().get(ApiConstants.onAirTvPath);
    // print("response___________________________++++++++getOnAirTvSource");
    // print(response);

    if (response.statusCode == 200) {
      return List.from((response.data["results"] as List)
          .map((e) => TvSeriesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<TvDetailsModel> getTvDetails(TvDetailsParameters parameters) async {
    final response =
        await Dio().get(ApiConstants.tvDetailsPath(parameters.tvId));
    // print("response___________________________++++++++getTvDetails");
    // print(response);
    // print(parameters.tvId);
    if (response.statusCode == 200) {
      return TvDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<TvRecommendationModel>> getTvRecommendation(
      TvRecommendationParameters parameters) async {
    final response =
        await Dio().get(ApiConstants.tvRecommendationPath(parameters.tvId));
    // print("response___________________________++++++++getTvRecommendation");
    //print(response);
    if (response.statusCode == 200) {
      return List<TvRecommendationModel>.from(response.data["results"]
          .map((e) => TvRecommendationModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
