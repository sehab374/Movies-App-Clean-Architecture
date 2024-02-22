import 'package:equatable/equatable.dart';

class TvDetailsParameters extends Equatable {
  final int tvId;

  const TvDetailsParameters({required this.tvId});

  @override
  // TODO: implement props
  List<Object?> get props => [tvId];
}
