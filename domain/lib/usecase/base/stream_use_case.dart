abstract class StreamUseCase<Type, Param> {
  Stream<Type> invoke(Param params);
}
