import 'package:dartz/dartz.dart';
import 'package:iqro_clean_from_scratch/core/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}