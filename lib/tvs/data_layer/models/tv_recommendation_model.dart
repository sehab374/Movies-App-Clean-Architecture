import 'package:clean_arch_movies_app/tvs/domain_layer/entities/tv_recommendation.dart';

class TvRecommendationModel extends TvRecommendation {
  const TvRecommendationModel({
    required super.id,
    super.backdropPath,
  });

  factory TvRecommendationModel.fromJson(Map<String, dynamic> json) =>
      TvRecommendationModel(
        id: json["id"],
        backdropPath:
            json["backdrop_path"] ?? "/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg",
      );
}
