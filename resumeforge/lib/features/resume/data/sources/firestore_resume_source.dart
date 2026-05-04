import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/models/resume_model.dart';

/// Firestore data source for resume operations
class FirestoreResumeSource {
  final FirebaseFirestore _firestore;

  FirestoreResumeSource(this._firestore);

  /// Collection reference for resumes
  CollectionReference<Map<String, dynamic>> get _resumesCollection =>
      _firestore.collection('resumes');

  /// Create a new resume
  Future<ResumeModel> createResume({
    required String userId,
    required String title,
    String? templateId,
  }) async {
    try {
      final now = DateTime.now();
      final docRef = _resumesCollection.doc();

      // Create initial version ID
      final versionId = '${docRef.id}_v1';

      final resume = ResumeModel(
        id: docRef.id,
        userId: userId,
        title: title,
        templateId: templateId ?? 'default',
        currentVersionId: versionId,
        versionIds: [versionId],
        tags: [],
        status: ResumeStatus.draft,
        createdAt: now,
        updatedAt: now,
      );

      await docRef.set(resume.toJson());
      return resume;
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to create resume: $e');
    }
  }

  /// Get a specific resume
  Future<ResumeModel> getResume(String resumeId) async {
    try {
      final doc = await _resumesCollection.doc(resumeId).get();

      if (!doc.exists) {
        throw ResumeException(message: 'Resume not found');
      }

      return ResumeModel.fromJson({...doc.data()!, 'id': doc.id});
    } on ResumeException {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to get resume: $e');
    }
  }

  /// Get all resumes for a user
  Future<List<ResumeModel>> getAllResumes(String userId) async {
    try {
      final querySnapshot = await _resumesCollection
          .where('userId', isEqualTo: userId)
          .orderBy('updatedAt', descending: true)
          .get();

      return querySnapshot.docs
          .map((doc) => ResumeModel.fromJson({...doc.data(), 'id': doc.id}))
          .toList();
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to get resumes: $e');
    }
  }

  /// Update a resume
  Future<ResumeModel> updateResume(ResumeModel resume) async {
    try {
      final updatedResume = resume.copyWith(updatedAt: DateTime.now());

      await _resumesCollection.doc(resume.id).update(updatedResume.toJson());

      return updatedResume;
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to update resume: $e');
    }
  }

  /// Delete a resume
  Future<void> deleteResume(String resumeId) async {
    try {
      await _resumesCollection.doc(resumeId).delete();
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to delete resume: $e');
    }
  }

  /// Duplicate a resume
  Future<ResumeModel> duplicateResume({
    required String resumeId,
    required String userId,
  }) async {
    try {
      // Get original resume
      final originalResume = await getResume(resumeId);

      // Check ownership
      if (originalResume.userId != userId) {
        throw ResumeException(
          message: 'Cannot duplicate resume owned by another user',
        );
      }

      // Create new resume with copied data
      final now = DateTime.now();
      final docRef = _resumesCollection.doc();

      // Create new version ID for duplicated resume
      final newVersionId = '${docRef.id}_v1';

      final duplicatedResume = originalResume.copyWith(
        id: docRef.id,
        title: '${originalResume.title} (Copy)',
        currentVersionId: newVersionId,
        versionIds: [newVersionId], // Start with one version
        createdAt: now,
        updatedAt: now,
      );

      await docRef.set(duplicatedResume.toJson());
      return duplicatedResume;
    } on ResumeException {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to duplicate resume: $e');
    }
  }

  /// Search resumes
  Future<List<ResumeModel>> searchResumes({
    required String userId,
    required String query,
  }) async {
    try {
      // Get all user resumes (Firestore has limited text search)
      final allResumes = await getAllResumes(userId);

      // Filter in memory
      final lowercaseQuery = query.toLowerCase();
      return allResumes.where((resume) {
        final titleMatch = resume.title.toLowerCase().contains(lowercaseQuery);
        final tagsMatch = resume.tags.any(
          (tag) => tag.toLowerCase().contains(lowercaseQuery),
        );
        return titleMatch || tagsMatch;
      }).toList();
    } catch (e) {
      throw ServerException(message: 'Failed to search resumes: $e');
    }
  }

  /// Filter resumes by status
  Future<List<ResumeModel>> filterResumesByStatus({
    required String userId,
    required ResumeStatus status,
  }) async {
    try {
      final querySnapshot = await _resumesCollection
          .where('userId', isEqualTo: userId)
          .where('status', isEqualTo: status.name)
          .orderBy('updatedAt', descending: true)
          .get();

      return querySnapshot.docs
          .map((doc) => ResumeModel.fromJson({...doc.data(), 'id': doc.id}))
          .toList();
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to filter resumes: $e');
    }
  }

  /// Filter resumes by tags
  Future<List<ResumeModel>> filterResumesByTags({
    required String userId,
    required List<String> tags,
  }) async {
    try {
      final querySnapshot = await _resumesCollection
          .where('userId', isEqualTo: userId)
          .where('tags', arrayContainsAny: tags)
          .orderBy('updatedAt', descending: true)
          .get();

      return querySnapshot.docs
          .map((doc) => ResumeModel.fromJson({...doc.data(), 'id': doc.id}))
          .toList();
    } on FirebaseException catch (e) {
      throw ServerException(message: _mapFirebaseError(e));
    } catch (e) {
      throw ServerException(message: 'Failed to filter resumes by tags: $e');
    }
  }

  /// Watch all resumes for a user (real-time)
  Stream<List<ResumeModel>> watchResumes(String userId) {
    try {
      return _resumesCollection
          .where('userId', isEqualTo: userId)
          .orderBy('updatedAt', descending: true)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map(
                  (doc) => ResumeModel.fromJson({...doc.data(), 'id': doc.id}),
                )
                .toList(),
          );
    } catch (e) {
      throw ServerException(message: 'Failed to watch resumes: $e');
    }
  }

  /// Watch a specific resume (real-time)
  Stream<ResumeModel> watchResume(String resumeId) {
    try {
      return _resumesCollection.doc(resumeId).snapshots().map((doc) {
        if (!doc.exists) {
          throw ResumeException(message: 'Resume not found');
        }
        return ResumeModel.fromJson({...doc.data()!, 'id': doc.id});
      });
    } catch (e) {
      throw ServerException(message: 'Failed to watch resume: $e');
    }
  }

  /// Map Firebase errors to user-friendly messages
  String _mapFirebaseError(FirebaseException e) {
    switch (e.code) {
      case 'permission-denied':
        return 'You do not have permission to perform this operation';
      case 'not-found':
        return 'Resume not found';
      case 'unavailable':
        return 'Service temporarily unavailable. Please try again';
      case 'deadline-exceeded':
        return 'Operation timed out. Please try again';
      case 'resource-exhausted':
        return 'Too many requests. Please try again later';
      default:
        return 'An error occurred: ${e.message}';
    }
  }
}
