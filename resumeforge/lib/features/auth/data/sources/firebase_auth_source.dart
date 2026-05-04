import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/models/user_model.dart';

/// Firebase authentication data source
class FirebaseAuthSource {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthSource({FirebaseAuth? firebaseAuth})
    : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  /// Get current user
  Future<UserModel?> getCurrentUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) return null;

      return _mapFirebaseUserToUserModel(user);
    } catch (e) {
      throw AuthException(
        message: 'Failed to get current user',
        code: 'get-user-failed',
      );
    }
  }

  /// Sign in with email and password
  Future<UserModel> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        throw AuthException(message: 'Sign in failed', code: 'sign-in-failed');
      }

      return _mapFirebaseUserToUserModel(credential.user!);
    } on FirebaseAuthException catch (e) {
      throw AuthException(message: _getAuthErrorMessage(e.code), code: e.code);
    } catch (e) {
      throw AuthException(
        message: 'An unexpected error occurred',
        code: 'unknown',
      );
    }
  }

  /// Sign up with email and password
  Future<UserModel> signUpWithEmailPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        throw AuthException(message: 'Sign up failed', code: 'sign-up-failed');
      }

      // Update display name
      await credential.user!.updateDisplayName(name);

      return _mapFirebaseUserToUserModel(credential.user!);
    } on FirebaseAuthException catch (e) {
      throw AuthException(message: _getAuthErrorMessage(e.code), code: e.code);
    } catch (e) {
      throw AuthException(
        message: 'An unexpected error occurred',
        code: 'unknown',
      );
    }
  }

  /// Sign in with Google
  Future<UserModel> signInWithGoogle() async {
    try {
      // Create a Google provider
      final GoogleAuthProvider googleProvider = GoogleAuthProvider();

      // Sign in with popup
      final UserCredential credential = await _firebaseAuth.signInWithPopup(
        googleProvider,
      );

      if (credential.user == null) {
        throw AuthException(
          message: 'Google sign in failed',
          code: 'google-sign-in-failed',
        );
      }

      return _mapFirebaseUserToUserModel(credential.user!);
    } on FirebaseAuthException catch (e) {
      throw AuthException(message: _getAuthErrorMessage(e.code), code: e.code);
    } catch (e) {
      throw AuthException(
        message: 'An unexpected error occurred during Google sign in',
        code: 'unknown',
      );
    }
  }

  /// Sign out
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw AuthException(
        message: 'Failed to sign out',
        code: 'sign-out-failed',
      );
    }
  }

  /// Reset password
  Future<void> resetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw AuthException(message: _getAuthErrorMessage(e.code), code: e.code);
    } catch (e) {
      throw AuthException(
        message: 'Failed to send password reset email',
        code: 'reset-password-failed',
      );
    }
  }

  /// Update user profile
  Future<UserModel> updateProfile({
    required String userId,
    String? name,
    String? photoUrl,
  }) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null || user.uid != userId) {
        throw AuthException(message: 'User not found', code: 'user-not-found');
      }

      if (name != null) {
        await user.updateDisplayName(name);
      }

      if (photoUrl != null) {
        await user.updatePhotoURL(photoUrl);
      }

      await user.reload();
      final updatedUser = _firebaseAuth.currentUser!;

      return _mapFirebaseUserToUserModel(updatedUser);
    } catch (e) {
      throw AuthException(
        message: 'Failed to update profile',
        code: 'update-profile-failed',
      );
    }
  }

  /// Check if user is signed in
  bool isSignedIn() {
    return _firebaseAuth.currentUser != null;
  }

  /// Stream of auth state changes
  Stream<UserModel?> get authStateChanges {
    return _firebaseAuth.authStateChanges().map((user) {
      if (user == null) return null;
      return _mapFirebaseUserToUserModel(user);
    });
  }

  /// Map Firebase User to UserModel
  UserModel _mapFirebaseUserToUserModel(User user) {
    return UserModel(
      id: user.uid,
      email: user.email ?? '',
      name: user.displayName ?? 'User',
      photoUrl: user.photoURL,
      createdAt: user.metadata.creationTime ?? DateTime.now(),
      updatedAt: DateTime.now(),
      resumeIds: [],
    );
  }

  /// Get user-friendly error message
  String _getAuthErrorMessage(String code) {
    switch (code) {
      case 'user-not-found':
        return 'No user found with this email';
      case 'wrong-password':
        return 'Incorrect password';
      case 'email-already-in-use':
        return 'An account already exists with this email';
      case 'invalid-email':
        return 'Invalid email address';
      case 'weak-password':
        return 'Password is too weak';
      case 'user-disabled':
        return 'This account has been disabled';
      case 'too-many-requests':
        return 'Too many attempts. Please try again later';
      case 'operation-not-allowed':
        return 'Operation not allowed';
      case 'network-request-failed':
        return 'Network error. Please check your connection';
      default:
        return 'Authentication error occurred';
    }
  }
}
