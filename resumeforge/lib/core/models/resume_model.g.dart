// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeModelImpl _$$ResumeModelImplFromJson(Map<String, dynamic> json) =>
    _$ResumeModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      title: json['title'] as String,
      targetRole: json['targetRole'] as String?,
      targetCompany: json['targetCompany'] as String?,
      templateId: json['templateId'] as String,
      currentVersionId: json['currentVersionId'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      status:
          $enumDecodeNullable(_$ResumeStatusEnumMap, json['status']) ??
          ResumeStatus.draft,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      versionIds:
          (json['versionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResumeModelImplToJson(_$ResumeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'targetRole': instance.targetRole,
      'targetCompany': instance.targetCompany,
      'templateId': instance.templateId,
      'currentVersionId': instance.currentVersionId,
      'tags': instance.tags,
      'status': _$ResumeStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'versionIds': instance.versionIds,
    };

const _$ResumeStatusEnumMap = {
  ResumeStatus.draft: 'draft',
  ResumeStatus.tailored: 'tailored',
  ResumeStatus.exported: 'exported',
  ResumeStatus.archived: 'archived',
};
