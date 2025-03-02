import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;
  final DioExceptionType type;
  ApiException(this.message, this.type);

  @override
  String toString() => message;
}

class NetworkException extends ApiException {
  NetworkException() : super("No hay conexión a Internet.", DioExceptionType.sendTimeout);
}

class ServerException extends ApiException {
  ServerException(String message) : super(message, DioExceptionType.badResponse);
}

class UnauthorizedException extends ApiException {
  UnauthorizedException() : super("No tienes permisos para acceder.", DioExceptionType.badResponse);
}
