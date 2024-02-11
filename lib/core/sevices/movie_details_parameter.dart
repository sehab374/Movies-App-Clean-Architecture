
import 'package:equatable/equatable.dart';

//////////to make the parameter dynamic
class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  // TODO: implement props
  List<Object?> get props => [movieId];
}
