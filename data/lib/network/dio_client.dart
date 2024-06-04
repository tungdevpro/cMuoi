import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../common/constants.dart';

@injectable
class DioClient {
  late Dio _dio;

  Dio build() {
    return _dio;
  }

  Future<void> init({List<InterceptorsWrapper>? interceptors, bool hasLog = true, String? baseUrl}) async {
    _dio = Dio()
      ..options = BaseOptions(
        baseUrl: baseUrl ?? '',
        contentType: NetworkRequestValues.contentType,
        sendTimeout: const Duration(milliseconds: Constants.timeOut),
        connectTimeout: const Duration(milliseconds: Constants.timeOut),
        receiveTimeout: const Duration(milliseconds: Constants.timeOut),
      );

    if (interceptors?.isNotEmpty ?? false) _dio.interceptors.addAll(interceptors!);
    if (hasLog) {
      _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ));
    }
  }
}
