import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/models/user_model.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/sources/firebase_auth_source.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_provider.g.dart';

/// Firebase Auth instance provider
@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) {
  return FirebaseAuth.instance;
}

/// Firebase Auth Source provider
@riverpod
FirebaseAuthSource firebaseAuthSource(FirebaseAuthSourceRef ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  return FirebaseAuthSource(firebaseAuth: firebaseAuth);
}

/// Auth Repository provider
@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final authSource = ref.watch(firebaseAuthSourceProvider);
  return AuthRepositoryImpl(authSource: authSource);
}

/// Current user provider
@riverpod
Stream<UserModel?> authStateChanges(AuthStateChangesRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges;
}

/// Current user snapshot provider
@riverpod
Future<UserModel?> currentUser(CurrentUserRef ref) async {
  final authRepository = ref.watch(authRepositoryProvider);
  return await authRepository.getCurrentUser();
}

/// Auth controller for sign in/out operations
@riverpod
class AuthController extends _$AuthController {
  @override
  Future<void> build() async {
    // Initialize - no state needed
  }

  /// Sign in with email and password
  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();

    try {
      final authRepository = ref.read(authRepositoryProvider);
      final result = await authRepository.signInWithEmailPassword(
        email: email,
        password: password,
      );

      return result.fold(
        (failure) {
          state = AsyncValue.error(failure, StackTrace.current);
          return failure.message;
        },
        (user) {
          state = const AsyncValue.data(null);
          // Invalidate current user to refresh
          ref.invalidate(currentUserProvider);
          return null; // No error
        },
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      return 'An unexpected error occurred';
    }
  }

  /// Sign up with email and password
  Future<String?> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    state = const AsyncValue.loading();

    try {
      final authRepository = ref.read(authRepositoryProvider);
      final result = await authRepository.signUpWithEmailPassword(
        email: email,
        password: password,
        name: name,
      );

      return result.fold(
        (failure) {
          state = AsyncValue.error(failure, StackTrace.current);
          return failure.message;
        },
        (user) {
          state = const AsyncValue.data(null);
          ref.invalidate(currentUserProvider);
          return null;
        },
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      return 'An unexpected error occurred';
    }
  }

  /// Sign in with Google
  Future<String?> signInWithGoogle() async {
    state = const AsyncValue.loading();

    try {
      final authRepository = ref.read(authRepositoryProvider);
      final result = await authRepository.signInWithGoogle();

      return result.fold(
        (failure) {
          state = AsyncValue.error(failure, StackTrace.current);
          return failure.message;
        },
        (user) {
          state = const AsyncValue.data(null);
          ref.invalidate(currentUserProvider);
          return null;
        },
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      return 'Google sign in failed';
    }
  }

  /// Sign out
  Future<String?> signOut() async {
    state = const AsyncValue.loading();

    try {
      final authRepository = ref.read(authRepositoryProvider);
      final result = await authRepository.signOut();

      return result.fold(
        (failure) {
          state = AsyncValue.error(failure, StackTrace.current);
          return failure.message;
        },
        (_) {
          state = const AsyncValue.data(null);
          ref.invalidate(currentUserProvider);
          return null;
        },
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      return 'An unexpected error occurred';
    }
  }

  /// Reset password
  Future<String?> resetPassword({required String email}) async {
    state = const AsyncValue.loading();

    try {
      final authRepository = ref.read(authRepositoryProvider);
      final result = await authRepository.resetPassword(email: email);

      return result.fold(
        (failure) {
          state = AsyncValue.error(failure, StackTrace.current);
          return failure.message;
        },
        (_) {
          state = const AsyncValue.data(null);
          return null;
        },
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      return 'An unexpected error occurred';
    }
  }
}
