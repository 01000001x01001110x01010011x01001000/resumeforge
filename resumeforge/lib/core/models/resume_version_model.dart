import 'package:freezed_annotation/freezed_annotation.dart';
import 'resume_content_model.dart';

part 'resume_version_model.freezed.dart';
part 'resume_version_model.g.dart';

/// Resume version model
@freezed
class ResumeVersionModel with _$ResumeVersionModel {
  const factory ResumeVersionModel({
    required String id,
    required String resumeId,
    required String name,
    required ResumeContentModel content,
    String? jobDescriptionText,
    String? aiNotes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ResumeVersionModel;

  factory ResumeVersionModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeVersionModelFromJson(json);
}
