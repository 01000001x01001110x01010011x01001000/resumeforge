import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_model.freezed.dart';
part 'resume_model.g.dart';

/// Resume status enum
enum ResumeStatus { draft, tailored, exported, archived }

/// Resume entity model
@freezed
class ResumeModel with _$ResumeModel {
  const factory ResumeModel({
    required String id,
    required String userId,
    required String title,
    String? targetRole,
    String? targetCompany,
    required String templateId,
    required String currentVersionId,
    @Default([]) List<String> tags,
    @Default(ResumeStatus.draft) ResumeStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<String> versionIds,
  }) = _ResumeModel;

  factory ResumeModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeModelFromJson(json);
}
