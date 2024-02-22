import 'package:equatable/equatable.dart';

class TvSeries extends Equatable {
  final int id;
  final double voteAverage;
  final List<int> genreIds;
  final String? backdropPath;
  final String overview;
  final String name;
  final String firstAirDate;

  const TvSeries({
    required this.id,
    required this.voteAverage,
    required this.genreIds,
    this.backdropPath,
    required this.overview,
    required this.name,
    required this.firstAirDate,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        voteAverage,
        genreIds,
        backdropPath,
        overview,
        name,
        firstAirDate,
      ];
}
//
// import 'package:equatable/equatable.dart';
//
// class TvSeries extends Equatable {
//   final int id;
//   final double voteAvarage;
//   final List<int> genreIds;
//   final String backdropPath;
//   final String overview;
//   final String name;
//   final String firstAirDate;
//
//   const TvSeries({
//     required this.id,
//     required this.voteAvarage,
//     required this.genreIds,
//     required this.backdropPath,
//     required this.overview,
//     required this.name,
//     required this.firstAirDate,
//   });
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [
//     id,
//     voteAvarage,
//     genreIds,
//     backdropPath,
//     overview,
//     name,
//     firstAirDate,
//   ];
// }
