import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/models/resume_model.dart';
import '../../domain/repositories/resume_repository.dart';
import '../../data/sources/firestore_resume_source.dart';
import '../../data/repositories/resume_repository_impl.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

part 'resume_provider.g.dart';

/// Firestore instance provider
@riverpod
FirebaseFirestore firestore(FirestoreRef ref) {
  return FirebaseFirestore.instance;
}

/// Firestore resume source provider
@riverpod
FirestoreResumeSource firestoreResumeSource(FirestoreResumeSourceRef ref) {
  final firestore = ref.watch(firestoreProvider);
  return FirestoreResumeSource(firestore);
}

/// Resume repository provider
@riverpod
ResumeRepository resumeRepository(ResumeRepositoryRef ref) {
  final firestoreSource = ref.watch(firestoreResumeSourceProvider);
  return ResumeRepositoryImpl(firestoreSource);
}

/// Watch all resumes for the current user
@riverpod
Stream<List<ResumeModel>> userResumes(UserResumesRef ref) {
  final userAsync = ref.watch(currentUserProvider);
  final repository = ref.watch(resumeRepositoryProvider);

  // Return empty stream if user is not available
  return userAsync.when(
    data: (user) {
      if (user == null) {
        return Stream.value([]);
      }
      return repository.watchResumes(user.id).map((result) {
        return result.fold((failure) => <ResumeModel>[], (resumes) => resumes);
      });
    },
    loading: () => Stream.value([]),
    error: (_, __) => Stream.value([]),
  );
}

/// Watch a specific resume
@riverpod
Stream<ResumeModel?> resume(ResumeRef ref, String resumeId) {
  final repository = ref.watch(resumeRepositoryProvider);

  return repository.watchResume(resumeId).map((result) {
    return result.fold((failure) => null, (resume) => resume);
  });
}

/// Resume controller for managing resume operations
@riverpod
class ResumeController extends _$ResumeController {
  @override
  FutureOr<void> build() {
    // No initial state needed
  }

  /// Create a new resume
  Future<String?> createResume({
    required String title,
    String? templateId,
  }) async {
    state = const AsyncLoading();

    final userAsync = ref.read(currentUserProvider);
    final user = userAsync.valueOrNull;

    if (user == null) {
      state = AsyncError('Not authenticated', StackTrace.current);
      return 'Please log in to create a resume';
    }

    final repository = ref.read(resumeRepositoryProvider);
    final result = await repository.createResume(
      userId: user.id,
      title: title,
      templateId: templateId,
    );

    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return failure.message;
      },
      (resume) {
        state = const AsyncData(null);
        return null; // Success
      },
    );
  }

  /// Update an existing resume
  Future<String?> updateResume(ResumeModel resume) async {
    state = const AsyncLoading();

    final repository = ref.read(resumeRepositoryProvider);
    final result = await repository.updateResume(resume);

    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return failure.message;
      },
      (updatedResume) {
        state = const AsyncData(null);
        return null; // Success
      },
    );
  }

  /// Delete a resume
  Future<String?> deleteResume(String resumeId) async {
    state = const AsyncLoading();

    final repository = ref.read(resumeRepositoryProvider);
    final result = await repository.deleteResume(resumeId);

    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return failure.message;
      },
      (_) {
        state = const AsyncData(null);
        return null; // Success
      },
    );
  }

  /// Duplicate a resume
  Future<String?> duplicateResume(String resumeId) async {
    state = const AsyncLoading();

    final userAsync = ref.read(currentUserProvider);
    final user = userAsync.valueOrNull;

    if (user == null) {
      state = AsyncError('Not authenticated', StackTrace.current);
      return 'Please log in to duplicate a resume';
    }

    final repository = ref.read(resumeRepositoryProvider);
    final result = await repository.duplicateResume(
      resumeId: resumeId,
      userId: user.id,
    );

    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return failure.message;
      },
      (duplicatedResume) {
        state = const AsyncData(null);
        return null; // Success
      },
    );
  }
}
