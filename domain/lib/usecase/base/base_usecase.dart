import 'package:domain/common/result.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Param> {
  Future<Result<Type>> invoke(Param param);
}

abstract class SyncUseCase<Type, Param> {
  Type invoke(Param params);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
