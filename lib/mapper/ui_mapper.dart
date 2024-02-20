abstract class UIMapper<E, D> {
  D mapFromUIModel(E type) => Object as D;

  E mapToUIModel(D type) => Object as E;
}
