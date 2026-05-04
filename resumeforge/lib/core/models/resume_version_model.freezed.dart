// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResumeVersionModel _$ResumeVersionModelFromJson(Map<String, dynamic> json) {
  return _ResumeVersionModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeVersionModel {
  String get id => throw _privateConstructorUsedError;
  String get resumeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ResumeContentModel get content => throw _privateConstructorUsedError;
  String? get jobDescriptionText => throw _privateConstructorUsedError;
  String? get aiNotes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ResumeVersionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResumeVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeVersionModelCopyWith<ResumeVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeVersionModelCopyWith<$Res> {
  factory $ResumeVersionModelCopyWith(
    ResumeVersionModel value,
    $Res Function(ResumeVersionModel) then,
  ) = _$ResumeVersionModelCopyWithImpl<$Res, ResumeVersionModel>;
  @useResult
  $Res call({
    String id,
    String resumeId,
    String name,
    ResumeContentModel content,
    String? jobDescriptionText,
    String? aiNotes,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $ResumeContentModelCopyWith<$Res> get content;
}

/// @nodoc
class _$ResumeVersionModelCopyWithImpl<$Res, $Val extends ResumeVersionModel>
    implements $ResumeVersionModelCopyWith<$Res> {
  _$ResumeVersionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? resumeId = null,
    Object? name = null,
    Object? content = null,
    Object? jobDescriptionText = freezed,
    Object? aiNotes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            resumeId: null == resumeId
                ? _value.resumeId
                : resumeId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as ResumeContentModel,
            jobDescriptionText: freezed == jobDescriptionText
                ? _value.jobDescriptionText
                : jobDescriptionText // ignore: cast_nullable_to_non_nullable
                      as String?,
            aiNotes: freezed == aiNotes
                ? _value.aiNotes
                : aiNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of ResumeVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResumeContentModelCopyWith<$Res> get content {
    return $ResumeContentModelCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeVersionModelImplCopyWith<$Res>
    implements $ResumeVersionModelCopyWith<$Res> {
  factory _$$ResumeVersionModelImplCopyWith(
    _$ResumeVersionModelImpl value,
    $Res Function(_$ResumeVersionModelImpl) then,
  ) = __$$ResumeVersionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String resumeId,
    String name,
    ResumeContentModel content,
    String? jobDescriptionText,
    String? aiNotes,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $ResumeContentModelCopyWith<$Res> get content;
}

/// @nodoc
class __$$ResumeVersionModelImplCopyWithImpl<$Res>
    extends _$ResumeVersionModelCopyWithImpl<$Res, _$ResumeVersionModelImpl>
    implements _$$ResumeVersionModelImplCopyWith<$Res> {
  __$$ResumeVersionModelImplCopyWithImpl(
    _$ResumeVersionModelImpl _value,
    $Res Function(_$ResumeVersionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? resumeId = null,
    Object? name = null,
    Object? content = null,
    Object? jobDescriptionText = freezed,
    Object? aiNotes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ResumeVersionModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        resumeId: null == resumeId
            ? _value.resumeId
            : resumeId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as ResumeContentModel,
        jobDescriptionText: freezed == jobDescriptionText
            ? _value.jobDescriptionText
            : jobDescriptionText // ignore: cast_nullable_to_non_nullable
                  as String?,
        aiNotes: freezed == aiNotes
            ? _value.aiNotes
            : aiNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeVersionModelImpl implements _ResumeVersionModel {
  const _$ResumeVersionModelImpl({
    required this.id,
    required this.resumeId,
    required this.name,
    required this.content,
    this.jobDescriptionText,
    this.aiNotes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$ResumeVersionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeVersionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String resumeId;
  @override
  final String name;
  @override
  final ResumeContentModel content;
  @override
  final String? jobDescriptionText;
  @override
  final String? aiNotes;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ResumeVersionModel(id: $id, resumeId: $resumeId, name: $name, content: $content, jobDescriptionText: $jobDescriptionText, aiNotes: $aiNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeVersionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.resumeId, resumeId) ||
                other.resumeId == resumeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.jobDescriptionText, jobDescriptionText) ||
                other.jobDescriptionText == jobDescriptionText) &&
            (identical(other.aiNotes, aiNotes) || other.aiNotes == aiNotes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    resumeId,
    name,
    content,
    jobDescriptionText,
    aiNotes,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ResumeVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeVersionModelImplCopyWith<_$ResumeVersionModelImpl> get copyWith =>
      __$$ResumeVersionModelImplCopyWithImpl<_$ResumeVersionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeVersionModelImplToJson(this);
  }
}

abstract class _ResumeVersionModel implements ResumeVersionModel {
  const factory _ResumeVersionModel({
    required final String id,
    required final String resumeId,
    required final String name,
    required final ResumeContentModel content,
    final String? jobDescriptionText,
    final String? aiNotes,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$ResumeVersionModelImpl;

  factory _ResumeVersionModel.fromJson(Map<String, dynamic> json) =
      _$ResumeVersionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get resumeId;
  @override
  String get name;
  @override
  ResumeContentModel get content;
  @override
  String? get jobDescriptionText;
  @override
  String? get aiNotes;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ResumeVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeVersionModelImplCopyWith<_$ResumeVersionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
