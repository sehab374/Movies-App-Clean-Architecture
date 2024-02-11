import 'package:clean_arch_movies_app/movies/domain_layer/entities/genres.dart';

class GenresModel extends Genres {
  const GenresModel({
    required super.name,
    required super.id,
  });

  factory GenresModel.fromJson(Map<String, dynamic> json) => GenresModel(
        name: json["name"],
        id: json["id"],
      );
}
