import 'package:domain/common/result.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<Type, Params> {
  Future<Result<Type>> invoke(Params params);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
