import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'generate_ai_service.g.dart';

@RestApi()
abstract class GenerateAiService {
  factory GenerateAiService(Dio dio) = _GenerateAiService;
}
