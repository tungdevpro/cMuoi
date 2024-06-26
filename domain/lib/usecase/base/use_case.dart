import '../../domain.dart';

abstract class UseCase<Type, Param> {
  Future<Result<Type>> invoke(Param param);
}
