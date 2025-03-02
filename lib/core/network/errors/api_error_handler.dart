import 'package:dio/dio.dart';
import 'api_exception.dart';

class ApiErrorHandler {
  static ApiException handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return NetworkException();

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode ?? 0;
        if (statusCode == 401) return UnauthorizedException();
        return ServerException("Error en el servidor: ${error.response?.data}");

      case DioExceptionType.cancel:
        return ApiException("Solicitud cancelada", DioExceptionType.cancel);

      default:
        return ApiException("Error inesperado: ${error.message}", DioExceptionType.unknown);
    }
  }
}
