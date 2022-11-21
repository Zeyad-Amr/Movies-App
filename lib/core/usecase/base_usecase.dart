import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';

abstract class BaseUseCase<T> {
  /// callable class function
  Future<Either<Failure, T>> call();
}
