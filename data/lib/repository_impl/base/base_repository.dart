import 'package:data/datasource/remote/dto/api_response.dart';
import 'package:dio/dio.dart';
import 'package:domain/common/result.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

typedef ResponseToModelMapper<Data, Model> = Model? Function(Data? data);
typedef EntityToModelMapper<Entity, Model> = Model? Function(Entity? entity);
typedef SaveResult<Data> = Future Function(Data? data);

// Nơi bọc wrap repository. Sử dụng (isolate) để parse json sang model để tăng tốc performance
abstract class BaseRepository {
  final _logger = Logger();

  // Handle call api
  Future<Result<Model>> apiHandler<Data, Model>(
    Future<ApiResponse<Data>> call, {
    required ResponseToModelMapper<Data, Model> mapper,
    SaveResult<Data?>? saveResult,
  }) async {
    try {
      final response = await call;
      if (response.isSuccess()) {
        saveResult?.call(response.data);
        final result = await compute(mapper, response.data);

        return ValueSuccess(result);
      }
      return ValueError(ErrorType.unknow, response.error ?? "An unknown error");
    } catch (e) {
      var loadException = e;
      _logger.e("Api error message -> ${loadException.toString()}");
      _logger.e(loadException);

      if (e is DioException) {
        loadException = e.type;
      }

      if (loadException is DioExceptionType) {
        switch (loadException) {
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.sendTimeout:
          case DioExceptionType.receiveTimeout:
          case DioExceptionType.cancel:
          case DioExceptionType.connectionError:
            return ValueError(ErrorType.slowNetwork, loadException.name);
          case DioExceptionType.unknown:
            return ValueError(ErrorType.noNetwork, loadException.name);
          case DioExceptionType.badResponse:
            return ValueError(ErrorType.unknow, loadException.name);
          case DioExceptionType.badCertificate:
            return ValueError(ErrorType.badCertificate, loadException.name);
        }
      }

      return ValueError(ErrorType.unknow, 'An unknown error');
    }
  }

  // Handle local storage
  Future<Result<Model>> storageHandler<Entity, Model>(Future<Entity?> call, {required EntityToModelMapper<Entity, Model> mapper}) async {
    try {
      final response = await call;
      if (response == null) {
        _logger.d("DB response is null");
        return ValueError(ErrorType.unknow, "DB response is null!");
      }
      _logger.d("DB success message -> $response");
      return ValueSuccess(mapper.call(response));
    } catch (exception) {
      _logger.d("DB failure message -> $exception");
      return ValueError(ErrorType.unknow, "Unknown DB error");
    }
  }
}
