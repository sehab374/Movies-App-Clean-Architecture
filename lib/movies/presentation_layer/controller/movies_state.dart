import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:equatable/equatable.dart';

class MoviesState extends Equatable {
  //////////////////////////////////////////////1st state
  final List<Movie> nowPlayingMovie;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  //////////////////////////////////////////////2nd state
  final List<Movie> popularMovie;
  final RequestState popularState;
  final String popularMessage;

  //////////////////////////////////////////////3rd state
  final List<Movie> topRatedMovie;
  final RequestState topRatedState;
  final String topRatedMessage;

  const MoviesState({
    this.nowPlayingMovie = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = "",
    this.popularMovie = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = "",
    this.topRatedMovie = const [],
    this.topRatedState = RequestState.loading,
    this.topRatedMessage = "",
  });

  MoviesState copyWith({
    List<Movie>? nowPlayingMovie,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovie,
    RequestState? popularState,
    String? popularMessage,
    List<Movie>? topRatedMovie,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
        nowPlayingMovie: nowPlayingMovie ?? this.nowPlayingMovie,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
        popularMovie: popularMovie ?? this.popularMovie,
        popularState: popularState ?? this.popularState,
        popularMessage: popularMessage ?? this.popularMessage,
        topRatedMovie: topRatedMovie ?? this.topRatedMovie,
        topRatedState: topRatedState ?? this.topRatedState,
        topRatedMessage: topRatedMessage ?? this.topRatedMessage);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        nowPlayingMovie,
        nowPlayingState,
        nowPlayingMessage,
        popularMovie,
        popularState,
        popularMessage,
        topRatedMovie,
        topRatedState,
        topRatedMessage,
      ];
}
