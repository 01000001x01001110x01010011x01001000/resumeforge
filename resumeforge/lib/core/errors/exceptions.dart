/// Base exception class
class AppException implements Exception {
  final String message;
  final String? code;

  AppException({required this.message, this.code});

  @override
  String toString() => message;
}

/// Server exception
class ServerException extends AppException {
  ServerException({required super.message, super.code});
}

/// Auth exception
class AuthException extends AppException {
  AuthException({required super.message, super.code});
}

/// Network exception
class NetworkException extends AppException {
  NetworkException({required super.message, super.code});
}

/// Cache exception
class CacheException extends AppException {
  CacheException({required super.message, super.code});
}

/// Resume exception
class ResumeException extends AppException {
  ResumeException({required super.message, super.code});
}
