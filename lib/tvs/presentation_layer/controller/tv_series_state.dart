part of 'tv_series_bloc.dart';

class TvSeriesState extends Equatable {


  final List<TvSeries> onAirTvSeries;
  final RequestState onAirTvState;
  final String onAirTvMessage;
  final List<TvSeries> popularTvSeries;
  final RequestState popularTvState;
  final String popularTvMessage;
  final List<TvSeries> topRatedTvSeries;
  final RequestState topRatedTvState;
  final String topRatedTvMessage;

  const TvSeriesState({
    this.onAirTvSeries = const [],
    this.onAirTvState = RequestState.loading,
    this.onAirTvMessage = "",
    this.popularTvSeries = const [],
    this.popularTvState = RequestState.loading,
    this.popularTvMessage = "",
    this.topRatedTvSeries = const [],
    this.topRatedTvState = RequestState.loading,
    this.topRatedTvMessage = "",
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        onAirTvSeries,
        onAirTvState,
        onAirTvMessage,
        popularTvSeries,
        popularTvState,
        popularTvMessage,
        topRatedTvSeries,
        topRatedTvState,
        topRatedTvMessage,
      ];

  TvSeriesState copyWith({
    List<TvSeries>? onAirTvSeries,
    RequestState? onAirTvState,
    String? onAirTvMessage,
    List<TvSeries>? popularTvSeries,
    RequestState? popularTvState,
    String? popularTvMessage,
    List<TvSeries>? topRatedTvSeries,
    RequestState? topRatedTvState,
    String? topRatedTvMessage,
  }) {
    return TvSeriesState(
        onAirTvSeries: onAirTvSeries ?? this.onAirTvSeries,
        onAirTvState: onAirTvState ?? this.onAirTvState,
        onAirTvMessage: onAirTvMessage ?? this.onAirTvMessage,
        popularTvSeries: popularTvSeries ?? this.popularTvSeries,
        popularTvState: popularTvState ?? this.popularTvState,
        popularTvMessage: popularTvMessage ?? this.popularTvMessage,
        topRatedTvSeries: topRatedTvSeries ?? this.topRatedTvSeries,
        topRatedTvMessage: topRatedTvMessage ?? this.topRatedTvMessage,
        topRatedTvState: topRatedTvState ?? this.topRatedTvState);
  }
}
