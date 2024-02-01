import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:equatable/equatable.dart';

class MoviesState extends Equatable {
  //////////////////////////////////////////////1st state
  final List<Movie> nowPlayingMovie;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  const MoviesState({
    this.nowPlayingMovie = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = "",
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        nowPlayingMovie,
        nowPlayingState,
        nowPlayingMessage,
      ];
}
