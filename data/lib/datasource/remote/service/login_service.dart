import 'package:data/common/api_path.dart';
import 'package:data/datasource/remote/dto/api_response.dart';
import 'package:data/datasource/remote/dto/login/login_username_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/login/login_response.dart';

part 'login_service.g.dart';

@RestApi()
@lazySingleton
abstract class LoginService {
  @factoryMethod
  factory LoginService(Dio dio) = _LoginService;

  @POST(ApiPath.login)
  Future<ApiResponse<LoginResponse?>> doLogin(@Body() LoginUsernameDto body);
}
