import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/models/user_model.dart';
import '../../domain/repositories/auth_repository.dart';
import '../sources/firebase_auth_source.dart';

/// Implementation of AuthRepository
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthSource _authSource;

  AuthRepositoryImpl({required FirebaseAuthSource authSource})
    : _authSource = authSource;

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      return await _authSource.getCurrentUser();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Either<Failure, UserModel>> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _authSource.signInWithEmailPassword(
        email: email,
        password: password,
      );
      return Right(user);
    } on AuthException catch (e) {
      return Left(AuthFailure(message: e.message, code: e.code));
    } catch (e) {
      return Left(AuthFailure(message: 'An unexpected error occurred'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> signUpWithEmailPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await _authSource.signUpWithEmailPassword(
        email: email,
        password: password,
        name: name,
      );
      return Right(user);
    } on AuthException catch (e) {
      return Left(AuthFailure(message: e.message, code: e.code));
    } catch (e) {
      return Left(AuthFailure(message: 'An unexpected error occurred'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> signInWithGoogle() async {
    try {
      final user = await _authSource.signInWithGoogle();
      return Right(user);
    } on AuthException catch (e) {
      return Left(AuthFailure(message: e.message, code: e.code));
    } catch (e) {
      return Left(AuthFailure(message: 'Google sign in failed'));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await _authSource.signOut();
      return const Right(null);
    } on AuthException catch (e) {
      return Left(AuthFailure(message: e.message, code: e.code));
    } catch (e) {
      return Left(AuthFailure(message: 'Failed to sign out'));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword({required String email}) async {
    try {
      await _authSource.resetPassword(email: email);
      return const Right(null);
    } on AuthException catch (e) {
      return Left(AuthFailure(message: e.message, code: e.code));
    } catch (e) {
      return Left(AuthFailure(message: 'Failed to reset password'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> updateProfile({
    required String userId,
    String? name,
    String? photoUrl,
  }) async {
    try {
      final user = await _authSource.updateProfile(
        userId: userId,
        name: name,
        photoUrl: photoUrl,
      );
      return Right(user);
    } on AuthException catch (e) {
      return Left(AuthFailure(message: e.message, code: e.code));
    } catch (e) {
      return Left(AuthFailure(message: 'Failed to update profile'));
    }
  }

  @override
  bool isSignedIn() {
    return _authSource.isSignedIn();
  }

  @override
  Stream<UserModel?> get authStateChanges {
    return _authSource.authStateChanges;
  }
}
