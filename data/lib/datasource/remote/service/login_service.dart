import 'package:data/common/api_path.dart';
import 'package:data/datasource/remote/dto/api_response.dart';
import 'package:data/datasource/remote/dto/login/login_email_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/login/login_phone_dto.dart';

part 'login_service.g.dart';

@RestApi()
abstract class LoginService {
  factory LoginService(Dio dio) = _LoginService;

  @POST(ApiPath.login)
  Future<ApiResponse> doLogin(@Body() LoginPhoneDto body);
}
