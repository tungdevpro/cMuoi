enum ErrorType { slowNetwork, noNetwork, badCertificate, unknow }

class Result<T> extends SealedResult<T> {
  bool get isSuccessful => this is ValueSuccess<T>;
}

class ValueSuccess<T> extends Result<T> {
  T? data;

  ValueSuccess(this.data);
}

class ValueError<T> extends Result<T> {
  ErrorType type;
  String error;
  String? code;

  ValueError(this.type, this.error, {this.code});
}

abstract class SealedResult<T> {
  R? when<R>({
    R Function(T? data)? success,
    R Function(ErrorType type, String error, String? code)? error,
  }) {
    if (this is ValueSuccess<T?>) {
      return success?.call(((this as ValueSuccess).data));
    }
    if (this is ValueError<T>) {
      return error?.call((this as ValueError<T>).type, (this as ValueError<T>).error, (this as ValueError<T>).code);
    }
    throw Exception('An error occurred');
  }
}
