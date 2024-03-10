import 'package:data/datasource/remote/service/sign_up_service.dart';
import 'package:data/utils/auth_interceptor.dart';
import 'package:injectable/injectable.dart';
import '../../network/dio_client.dart';

@singleton
class ApiClient {
  final DioClient dio;
  ApiClient(this.dio) {
    dio.init(interceptors: [AuthInterceptor()]);
  }

  SignUpService get signup => SignUpService(dio.build());
}
