
class ApiException implements Exception {
  final String message;
  ApiException(this.message);

  @override
  String toString() => message;
}

class NetworkException extends ApiException {
  NetworkException() : super("No hay conexión a Internet.");
}

class ServerException extends ApiException {
  ServerException(String message) : super(message);
}

class UnauthorizedException extends ApiException {
  UnauthorizedException() : super("No tienes permisos para acceder.");
}
