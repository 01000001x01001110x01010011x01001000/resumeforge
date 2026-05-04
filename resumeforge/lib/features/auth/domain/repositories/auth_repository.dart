import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/models/user_model.dart';

/// Authentication repository interface
abstract class AuthRepository {
  /// Get current user
  Future<UserModel?> getCurrentUser();

  /// Sign in with email and password
  Future<Either<Failure, UserModel>> signInWithEmailPassword({
    required String email,
    required String password,
  });

  /// Sign up with email and password
  Future<Either<Failure, UserModel>> signUpWithEmailPassword({
    required String email,
    required String password,
    required String name,
  });

  /// Sign in with Google
  Future<Either<Failure, UserModel>> signInWithGoogle();

  /// Sign out
  Future<Either<Failure, void>> signOut();

  /// Reset password
  Future<Either<Failure, void>> resetPassword({required String email});

  /// Update user profile
  Future<Either<Failure, UserModel>> updateProfile({
    required String userId,
    String? name,
    String? photoUrl,
  });

  /// Check if user is signed in
  bool isSignedIn();

  /// Stream of auth state changes
  Stream<UserModel?> get authStateChanges;
}
