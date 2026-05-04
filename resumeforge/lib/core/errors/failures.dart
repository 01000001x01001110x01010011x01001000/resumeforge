/// Base class for all failures in the application
abstract class Failure {
  final String message;
  final String? code;
  final dynamic exception;

  const Failure({required this.message, this.code, this.exception});

  @override
  String toString() => message;
}

/// Server-side failure
class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.code, super.exception});
}

/// Authentication failure
class AuthFailure extends Failure {
  const AuthFailure({required super.message, super.code, super.exception});
}

/// Network failure
class NetworkFailure extends Failure {
  const NetworkFailure({required super.message, super.code, super.exception});
}

/// Cache failure
class CacheFailure extends Failure {
  const CacheFailure({required super.message, super.code, super.exception});
}

/// Validation failure
class ValidationFailure extends Failure {
  const ValidationFailure({
    required super.message,
    super.code,
    super.exception,
  });
}

/// Not found failure
class NotFoundFailure extends Failure {
  const NotFoundFailure({required super.message, super.code, super.exception});
}

/// Permission denied failure
class PermissionFailure extends Failure {
  const PermissionFailure({
    required super.message,
    super.code,
    super.exception,
  });
}
