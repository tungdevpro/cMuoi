import 'dart:io';

import 'package:data/datasource/local/db/app_shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:domain/common/header_request_constants.dart';
import 'package:domain/common/keys/token_keys.dart';
import 'package:injectable/injectable.dart';

import '../../common/api_path.dart';
import '../../datasource/remote/dto/auth/token_payload_data.dart';

@lazySingleton
class RefreshTokenInterceptor extends QueuedInterceptor {
  final AppSharedPreferences sharedPreferences;
  final Dio dio;

  RefreshTokenInterceptor(this.sharedPreferences, this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = sharedPreferences.getString(TokenKeys.accessToken);
    if (token != null) {
      options.headers[HeaderRequestConstants.basicAuthorization] = '${HeaderRequestConstants.bearer} $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      var res = await _didRefreshToken();
      if (res != null && res) {
        await _retry(err.requestOptions);
      }
    }
    super.onError(err, handler);
  }

  Future<bool?> _didRefreshToken() async {
    final refreshToken = sharedPreferences.getString(TokenKeys.refreshToken);
    final payload = TokenPayloadData(refreshToken: refreshToken);
    final response = await dio.post(ApiPath.refreshToken, data: payload.toJson());
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = response.data["data"];
      final newAccessToken = data["token"];
      final refreshToken = data["refreshToken"];
      if (newAccessToken != null && refreshToken != null) {
        await Future.wait([
          sharedPreferences.setString(TokenKeys.accessToken, newAccessToken),
          sharedPreferences.setString(TokenKeys.refreshToken, refreshToken),
        ]);
        return true;
      }
      return false;
    }
    return null;
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return dio.request<dynamic>(requestOptions.path, data: requestOptions.data, queryParameters: requestOptions.queryParameters, options: options);
  }
}
