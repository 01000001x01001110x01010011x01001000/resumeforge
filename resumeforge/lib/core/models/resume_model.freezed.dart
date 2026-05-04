// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResumeModel _$ResumeModelFromJson(Map<String, dynamic> json) {
  return _ResumeModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get targetRole => throw _privateConstructorUsedError;
  String? get targetCompany => throw _privateConstructorUsedError;
  String get templateId => throw _privateConstructorUsedError;
  String get currentVersionId => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  ResumeStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<String> get versionIds => throw _privateConstructorUsedError;

  /// Serializes this ResumeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeModelCopyWith<ResumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeModelCopyWith<$Res> {
  factory $ResumeModelCopyWith(
    ResumeModel value,
    $Res Function(ResumeModel) then,
  ) = _$ResumeModelCopyWithImpl<$Res, ResumeModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String title,
    String? targetRole,
    String? targetCompany,
    String templateId,
    String currentVersionId,
    List<String> tags,
    ResumeStatus status,
    DateTime createdAt,
    DateTime updatedAt,
    List<String> versionIds,
  });
}

/// @nodoc
class _$ResumeModelCopyWithImpl<$Res, $Val extends ResumeModel>
    implements $ResumeModelCopyWith<$Res> {
  _$ResumeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? targetRole = freezed,
    Object? targetCompany = freezed,
    Object? templateId = null,
    Object? currentVersionId = null,
    Object? tags = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? versionIds = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            targetRole: freezed == targetRole
                ? _value.targetRole
                : targetRole // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetCompany: freezed == targetCompany
                ? _value.targetCompany
                : targetCompany // ignore: cast_nullable_to_non_nullable
                      as String?,
            templateId: null == templateId
                ? _value.templateId
                : templateId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentVersionId: null == currentVersionId
                ? _value.currentVersionId
                : currentVersionId // ignore: cast_nullable_to_non_nullable
                      as String,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ResumeStatus,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            versionIds: null == versionIds
                ? _value.versionIds
                : versionIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResumeModelImplCopyWith<$Res>
    implements $ResumeModelCopyWith<$Res> {
  factory _$$ResumeModelImplCopyWith(
    _$ResumeModelImpl value,
    $Res Function(_$ResumeModelImpl) then,
  ) = __$$ResumeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String title,
    String? targetRole,
    String? targetCompany,
    String templateId,
    String currentVersionId,
    List<String> tags,
    ResumeStatus status,
    DateTime createdAt,
    DateTime updatedAt,
    List<String> versionIds,
  });
}

/// @nodoc
class __$$ResumeModelImplCopyWithImpl<$Res>
    extends _$ResumeModelCopyWithImpl<$Res, _$ResumeModelImpl>
    implements _$$ResumeModelImplCopyWith<$Res> {
  __$$ResumeModelImplCopyWithImpl(
    _$ResumeModelImpl _value,
    $Res Function(_$ResumeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? targetRole = freezed,
    Object? targetCompany = freezed,
    Object? templateId = null,
    Object? currentVersionId = null,
    Object? tags = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? versionIds = null,
  }) {
    return _then(
      _$ResumeModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        targetRole: freezed == targetRole
            ? _value.targetRole
            : targetRole // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetCompany: freezed == targetCompany
            ? _value.targetCompany
            : targetCompany // ignore: cast_nullable_to_non_nullable
                  as String?,
        templateId: null == templateId
            ? _value.templateId
            : templateId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentVersionId: null == currentVersionId
            ? _value.currentVersionId
            : currentVersionId // ignore: cast_nullable_to_non_nullable
                  as String,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ResumeStatus,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        versionIds: null == versionIds
            ? _value._versionIds
            : versionIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeModelImpl implements _ResumeModel {
  const _$ResumeModelImpl({
    required this.id,
    required this.userId,
    required this.title,
    this.targetRole,
    this.targetCompany,
    required this.templateId,
    required this.currentVersionId,
    final List<String> tags = const [],
    this.status = ResumeStatus.draft,
    required this.createdAt,
    required this.updatedAt,
    final List<String> versionIds = const [],
  }) : _tags = tags,
       _versionIds = versionIds;

  factory _$ResumeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String title;
  @override
  final String? targetRole;
  @override
  final String? targetCompany;
  @override
  final String templateId;
  @override
  final String currentVersionId;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final ResumeStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<String> _versionIds;
  @override
  @JsonKey()
  List<String> get versionIds {
    if (_versionIds is EqualUnmodifiableListView) return _versionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionIds);
  }

  @override
  String toString() {
    return 'ResumeModel(id: $id, userId: $userId, title: $title, targetRole: $targetRole, targetCompany: $targetCompany, templateId: $templateId, currentVersionId: $currentVersionId, tags: $tags, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, versionIds: $versionIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.targetRole, targetRole) ||
                other.targetRole == targetRole) &&
            (identical(other.targetCompany, targetCompany) ||
                other.targetCompany == targetCompany) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.currentVersionId, currentVersionId) ||
                other.currentVersionId == currentVersionId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(
              other._versionIds,
              _versionIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    title,
    targetRole,
    targetCompany,
    templateId,
    currentVersionId,
    const DeepCollectionEquality().hash(_tags),
    status,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_versionIds),
  );

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      __$$ResumeModelImplCopyWithImpl<_$ResumeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeModelImplToJson(this);
  }
}

abstract class _ResumeModel implements ResumeModel {
  const factory _ResumeModel({
    required final String id,
    required final String userId,
    required final String title,
    final String? targetRole,
    final String? targetCompany,
    required final String templateId,
    required final String currentVersionId,
    final List<String> tags,
    final ResumeStatus status,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final List<String> versionIds,
  }) = _$ResumeModelImpl;

  factory _ResumeModel.fromJson(Map<String, dynamic> json) =
      _$ResumeModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get title;
  @override
  String? get targetRole;
  @override
  String? get targetCompany;
  @override
  String get templateId;
  @override
  String get currentVersionId;
  @override
  List<String> get tags;
  @override
  ResumeStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<String> get versionIds;

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
