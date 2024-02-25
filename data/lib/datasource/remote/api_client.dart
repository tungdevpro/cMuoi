import 'package:data/datasource/remote/service/sign_up_service.dart';
import 'package:injectable/injectable.dart';
import '../../network/dio_client.dart';

@singleton
class ApiClient {
  final DioClient dio;
  ApiClient(this.dio) {}

  SignUpService get signup => SignUpService(dio.build());
}
