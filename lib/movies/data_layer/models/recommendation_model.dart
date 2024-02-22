import 'package:clean_arch_movies_app/movies/domain_layer/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    super.backdropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        id: json["id"],
        backdropPath:
            json["backdrop_path"] ?? "/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg",
      );
}
