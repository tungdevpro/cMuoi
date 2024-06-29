import 'package:data/common/api_path.dart';
import 'package:data/datasource/remote/dto/api_response.dart';
import 'package:data/datasource/remote/dto/login/login_username_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/account/api_current_auth_user_response_data.dart';
import '../dto/auth/token_payload_data.dart';
import '../dto/login/login_response.dart';
import '../dto/sign_up/sign_up_email_dto.dart';

part 'auth_service.g.dart';

@RestApi()
@lazySingleton
abstract class AuthService {
  @factoryMethod
  factory AuthService(Dio dio) = _AuthService;

  @POST(ApiPath.login)
  Future<ApiResponse<LoginResponse?>> doLogin(@Body() LoginUsernameDto body);

  @POST(ApiPath.signUp)
  Future<ApiResponse> doSignup(@Body() SignUpEmailDTO body);

  @POST(ApiPath.refreshToken)
  Future<ApiResponse> refreshToken(@Body() TokenPayloadData body);

  @GET(ApiPath.currentAuthUser)
  Future<ApiResponse<ApiCurrentAuthUserResponseData>> getCurrentAuthUser();
}
