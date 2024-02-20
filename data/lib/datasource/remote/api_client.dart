import 'package:get_it/get_it.dart';

import '../../network/dio_client.dart';

class ApiClient {
  ApiClient() {
    _dio = GetIt.instance<DioClient>()..build();
  }

  late DioClient _dio;
}
