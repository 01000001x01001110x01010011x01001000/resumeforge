// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeVersionModelImpl _$$ResumeVersionModelImplFromJson(
  Map<String, dynamic> json,
) => _$ResumeVersionModelImpl(
  id: json['id'] as String,
  resumeId: json['resumeId'] as String,
  name: json['name'] as String,
  content: ResumeContentModel.fromJson(json['content'] as Map<String, dynamic>),
  jobDescriptionText: json['jobDescriptionText'] as String?,
  aiNotes: json['aiNotes'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$ResumeVersionModelImplToJson(
  _$ResumeVersionModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'resumeId': instance.resumeId,
  'name': instance.name,
  'content': instance.content,
  'jobDescriptionText': instance.jobDescriptionText,
  'aiNotes': instance.aiNotes,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
