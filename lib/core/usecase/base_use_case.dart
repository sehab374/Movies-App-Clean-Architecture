import 'package:clean_arch_movies_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

///parameters is a dynamic datatype
abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

///////////////use it in case of i have no parameter
class NoParameters extends Equatable {
  const NoParameters();

  @override
  List<Object?> get props => [];
}
