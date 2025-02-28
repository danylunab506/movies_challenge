import 'package:dio/dio.dart';
import '../constants/app_config.dart';
import '../constants/api_constants.dart';

const defaultDuration = Duration(seconds: 10);

class ApiClient {
  static Dio getClient() {
    return Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveTimeout: defaultDuration,
        sendTimeout: defaultDuration,
        connectTimeout: defaultDuration,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': AppConfig.apiKey,
        },
      ),
    );
  }
}
