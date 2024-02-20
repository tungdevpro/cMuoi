import 'package:json_annotation/json_annotation.dart';
part 'api_response.g.dart';

enum CodeApiResponse {
  success(200),
  parseErr(-1),
  timeout(-2),
  tokenExprired(-99),
  unknowErr(401);

  const CodeApiResponse(this.value);
  final int value;
}

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ApiResponse<T> {
  final String? code;
  final int? status;
  final String? error;
  final List<String>? codes;
  final T? data;

  ApiResponse({this.code, this.error, this.codes, this.status, this.data});

  bool isSuccess() => CodeApiResponse.success.value == status;

  bool isTimeOut() => CodeApiResponse.timeout.value == status;

  bool isTokenExprired() => CodeApiResponse.tokenExprired.value == status;

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$ApiResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) => _$ApiResponseToJson<T>(this, toJsonT);
}
