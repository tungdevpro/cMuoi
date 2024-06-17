import 'package:data/common/api_path.dart';
import 'package:data/datasource/remote/dto/api_response.dart';
import 'package:data/datasource/remote/dto/sign_up/sign_up_email_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'sign_up_service.g.dart';

@RestApi()
@lazySingleton
abstract class SignUpService {
  @factoryMethod
  factory SignUpService(Dio dio) = _SignUpService;

  @POST(ApiPath.signUp)
  Future<ApiResponse> doSignup(@Body() SignUpEmailDTO body);
}
