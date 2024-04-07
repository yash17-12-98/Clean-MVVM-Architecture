import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/network/failure.dart';
import 'package:flutter_clean_architecture/domain/model/model.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Authentication>> execute(In input);
}
