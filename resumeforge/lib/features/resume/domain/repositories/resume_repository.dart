import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/models/resume_model.dart';

/// Repository interface for resume operations
///
/// Defines all operations for managing resumes including CRUD,
/// versioning, and search operations.
abstract class ResumeRepository {
  /// Create a new resume
  ///
  /// Returns [Right(Resume)] on success or [Left(Failure)] on error
  Future<Either<Failure, ResumeModel>> createResume({
    required String userId,
    required String title,
    String? templateId,
  });

  /// Get a specific resume by ID
  ///
  /// Returns [Right(Resume)] on success or [Left(NotFoundFailure)] if not found
  Future<Either<Failure, ResumeModel>> getResume(String resumeId);

  /// Get all resumes for a user
  ///
  /// Returns [Right(List<Resume>)] on success or [Left(Failure)] on error
  Future<Either<Failure, List<ResumeModel>>> getAllResumes(String userId);

  /// Update an existing resume
  ///
  /// Returns [Right(Resume)] on success or [Left(Failure)] on error
  Future<Either<Failure, ResumeModel>> updateResume(ResumeModel resume);

  /// Delete a resume
  ///
  /// Returns [Right(Unit)] on success or [Left(Failure)] on error
  Future<Either<Failure, Unit>> deleteResume(String resumeId);

  /// Duplicate a resume
  ///
  /// Creates a copy of the resume with a new ID
  /// Returns [Right(Resume)] on success or [Left(Failure)] on error
  Future<Either<Failure, ResumeModel>> duplicateResume({
    required String resumeId,
    required String userId,
  });

  /// Search resumes by query
  ///
  /// Searches title, tags, and template name
  /// Returns [Right(List<Resume>)] on success or [Left(Failure)] on error
  Future<Either<Failure, List<ResumeModel>>> searchResumes({
    required String userId,
    required String query,
  });

  /// Filter resumes by status
  ///
  /// Returns [Right(List<Resume>)] on success or [Left(Failure)] on error
  Future<Either<Failure, List<ResumeModel>>> filterResumesByStatus({
    required String userId,
    required ResumeStatus status,
  });

  /// Filter resumes by tags
  ///
  /// Returns resumes that contain all specified tags
  /// Returns [Right(List<Resume>)] on success or [Left(Failure)] on error
  Future<Either<Failure, List<ResumeModel>>> filterResumesByTags({
    required String userId,
    required List<String> tags,
  });

  /// Watch all resumes for a user (real-time updates)
  ///
  /// Returns a stream of resumes that updates in real-time
  Stream<Either<Failure, List<ResumeModel>>> watchResumes(String userId);

  /// Watch a specific resume (real-time updates)
  ///
  /// Returns a stream of the resume that updates in real-time
  Stream<Either<Failure, ResumeModel>> watchResume(String resumeId);
}
