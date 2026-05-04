import 'package:dartz/dartz.dart';
import '../../domain/repositories/resume_repository.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/models/resume_model.dart';
import '../sources/firestore_resume_source.dart';

/// Implementation of [ResumeRepository] using Firestore
class ResumeRepositoryImpl implements ResumeRepository {
  final FirestoreResumeSource _firestoreSource;

  ResumeRepositoryImpl(this._firestoreSource);

  @override
  Future<Either<Failure, ResumeModel>> createResume({
    required String userId,
    required String title,
    String? templateId,
  }) async {
    try {
      final resume = await _firestoreSource.createResume(
        userId: userId,
        title: title,
        templateId: templateId,
      );
      return Right(resume);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to create resume: $e'));
    }
  }

  @override
  Future<Either<Failure, ResumeModel>> getResume(String resumeId) async {
    try {
      final resume = await _firestoreSource.getResume(resumeId);
      return Right(resume);
    } on ResumeException catch (e) {
      return Left(NotFoundFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get resume: $e'));
    }
  }

  @override
  Future<Either<Failure, List<ResumeModel>>> getAllResumes(
    String userId,
  ) async {
    try {
      final resumes = await _firestoreSource.getAllResumes(userId);
      return Right(resumes);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get resumes: $e'));
    }
  }

  @override
  Future<Either<Failure, ResumeModel>> updateResume(ResumeModel resume) async {
    try {
      final updatedResume = await _firestoreSource.updateResume(resume);
      return Right(updatedResume);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to update resume: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteResume(String resumeId) async {
    try {
      await _firestoreSource.deleteResume(resumeId);
      return const Right(unit);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to delete resume: $e'));
    }
  }

  @override
  Future<Either<Failure, ResumeModel>> duplicateResume({
    required String resumeId,
    required String userId,
  }) async {
    try {
      final duplicatedResume = await _firestoreSource.duplicateResume(
        resumeId: resumeId,
        userId: userId,
      );
      return Right(duplicatedResume);
    } on ResumeException catch (e) {
      return Left(PermissionFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to duplicate resume: $e'));
    }
  }

  @override
  Future<Either<Failure, List<ResumeModel>>> searchResumes({
    required String userId,
    required String query,
  }) async {
    try {
      final resumes = await _firestoreSource.searchResumes(
        userId: userId,
        query: query,
      );
      return Right(resumes);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to search resumes: $e'));
    }
  }

  @override
  Future<Either<Failure, List<ResumeModel>>> filterResumesByStatus({
    required String userId,
    required ResumeStatus status,
  }) async {
    try {
      final resumes = await _firestoreSource.filterResumesByStatus(
        userId: userId,
        status: status,
      );
      return Right(resumes);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to filter resumes: $e'));
    }
  }

  @override
  Future<Either<Failure, List<ResumeModel>>> filterResumesByTags({
    required String userId,
    required List<String> tags,
  }) async {
    try {
      final resumes = await _firestoreSource.filterResumesByTags(
        userId: userId,
        tags: tags,
      );
      return Right(resumes);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      return Left(
        ServerFailure(message: 'Failed to filter resumes by tags: $e'),
      );
    }
  }

  @override
  Stream<Either<Failure, List<ResumeModel>>> watchResumes(String userId) {
    try {
      return _firestoreSource
          .watchResumes(userId)
          .map((resumes) => Right<Failure, List<ResumeModel>>(resumes));
    } on ServerException catch (e) {
      return Stream.value(Left(ServerFailure(message: e.message)));
    } catch (e) {
      return Stream.value(
        Left(ServerFailure(message: 'Failed to watch resumes: $e')),
      );
    }
  }

  @override
  Stream<Either<Failure, ResumeModel>> watchResume(String resumeId) {
    try {
      return _firestoreSource
          .watchResume(resumeId)
          .map((resume) => Right<Failure, ResumeModel>(resume));
    } on ResumeException catch (e) {
      return Stream.value(Left(NotFoundFailure(message: e.message)));
    } on ServerException catch (e) {
      return Stream.value(Left(ServerFailure(message: e.message)));
    } catch (e) {
      return Stream.value(
        Left(ServerFailure(message: 'Failed to watch resume: $e')),
      );
    }
  }
}
