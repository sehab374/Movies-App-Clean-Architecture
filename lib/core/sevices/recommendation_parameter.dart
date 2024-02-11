import 'package:equatable/equatable.dart';

class RecommendationParameter extends Equatable {
  final int id;

  const RecommendationParameter(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
