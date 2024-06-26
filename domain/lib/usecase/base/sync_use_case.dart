abstract class SyncUseCase<Type, Param> {
  Type invoke(Param params);
}
