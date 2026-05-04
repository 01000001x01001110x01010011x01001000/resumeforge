// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResumeContentModel _$ResumeContentModelFromJson(Map<String, dynamic> json) {
  return _ResumeContentModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeContentModel {
  HeaderSection get header => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  List<ExperienceSection> get experience => throw _privateConstructorUsedError;
  List<EducationSection> get education => throw _privateConstructorUsedError;
  List<SkillSection> get skills => throw _privateConstructorUsedError;
  List<ProjectSection> get projects => throw _privateConstructorUsedError;
  List<CertificationSection> get certifications =>
      throw _privateConstructorUsedError;
  List<AchievementSection> get achievements =>
      throw _privateConstructorUsedError;

  /// Serializes this ResumeContentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResumeContentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeContentModelCopyWith<ResumeContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeContentModelCopyWith<$Res> {
  factory $ResumeContentModelCopyWith(
    ResumeContentModel value,
    $Res Function(ResumeContentModel) then,
  ) = _$ResumeContentModelCopyWithImpl<$Res, ResumeContentModel>;
  @useResult
  $Res call({
    HeaderSection header,
    String? summary,
    List<ExperienceSection> experience,
    List<EducationSection> education,
    List<SkillSection> skills,
    List<ProjectSection> projects,
    List<CertificationSection> certifications,
    List<AchievementSection> achievements,
  });

  $HeaderSectionCopyWith<$Res> get header;
}

/// @nodoc
class _$ResumeContentModelCopyWithImpl<$Res, $Val extends ResumeContentModel>
    implements $ResumeContentModelCopyWith<$Res> {
  _$ResumeContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeContentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? summary = freezed,
    Object? experience = null,
    Object? education = null,
    Object? skills = null,
    Object? projects = null,
    Object? certifications = null,
    Object? achievements = null,
  }) {
    return _then(
      _value.copyWith(
            header: null == header
                ? _value.header
                : header // ignore: cast_nullable_to_non_nullable
                      as HeaderSection,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String?,
            experience: null == experience
                ? _value.experience
                : experience // ignore: cast_nullable_to_non_nullable
                      as List<ExperienceSection>,
            education: null == education
                ? _value.education
                : education // ignore: cast_nullable_to_non_nullable
                      as List<EducationSection>,
            skills: null == skills
                ? _value.skills
                : skills // ignore: cast_nullable_to_non_nullable
                      as List<SkillSection>,
            projects: null == projects
                ? _value.projects
                : projects // ignore: cast_nullable_to_non_nullable
                      as List<ProjectSection>,
            certifications: null == certifications
                ? _value.certifications
                : certifications // ignore: cast_nullable_to_non_nullable
                      as List<CertificationSection>,
            achievements: null == achievements
                ? _value.achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                      as List<AchievementSection>,
          )
          as $Val,
    );
  }

  /// Create a copy of ResumeContentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeaderSectionCopyWith<$Res> get header {
    return $HeaderSectionCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeContentModelImplCopyWith<$Res>
    implements $ResumeContentModelCopyWith<$Res> {
  factory _$$ResumeContentModelImplCopyWith(
    _$ResumeContentModelImpl value,
    $Res Function(_$ResumeContentModelImpl) then,
  ) = __$$ResumeContentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    HeaderSection header,
    String? summary,
    List<ExperienceSection> experience,
    List<EducationSection> education,
    List<SkillSection> skills,
    List<ProjectSection> projects,
    List<CertificationSection> certifications,
    List<AchievementSection> achievements,
  });

  @override
  $HeaderSectionCopyWith<$Res> get header;
}

/// @nodoc
class __$$ResumeContentModelImplCopyWithImpl<$Res>
    extends _$ResumeContentModelCopyWithImpl<$Res, _$ResumeContentModelImpl>
    implements _$$ResumeContentModelImplCopyWith<$Res> {
  __$$ResumeContentModelImplCopyWithImpl(
    _$ResumeContentModelImpl _value,
    $Res Function(_$ResumeContentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeContentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? summary = freezed,
    Object? experience = null,
    Object? education = null,
    Object? skills = null,
    Object? projects = null,
    Object? certifications = null,
    Object? achievements = null,
  }) {
    return _then(
      _$ResumeContentModelImpl(
        header: null == header
            ? _value.header
            : header // ignore: cast_nullable_to_non_nullable
                  as HeaderSection,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String?,
        experience: null == experience
            ? _value._experience
            : experience // ignore: cast_nullable_to_non_nullable
                  as List<ExperienceSection>,
        education: null == education
            ? _value._education
            : education // ignore: cast_nullable_to_non_nullable
                  as List<EducationSection>,
        skills: null == skills
            ? _value._skills
            : skills // ignore: cast_nullable_to_non_nullable
                  as List<SkillSection>,
        projects: null == projects
            ? _value._projects
            : projects // ignore: cast_nullable_to_non_nullable
                  as List<ProjectSection>,
        certifications: null == certifications
            ? _value._certifications
            : certifications // ignore: cast_nullable_to_non_nullable
                  as List<CertificationSection>,
        achievements: null == achievements
            ? _value._achievements
            : achievements // ignore: cast_nullable_to_non_nullable
                  as List<AchievementSection>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeContentModelImpl implements _ResumeContentModel {
  const _$ResumeContentModelImpl({
    required this.header,
    this.summary,
    final List<ExperienceSection> experience = const [],
    final List<EducationSection> education = const [],
    final List<SkillSection> skills = const [],
    final List<ProjectSection> projects = const [],
    final List<CertificationSection> certifications = const [],
    final List<AchievementSection> achievements = const [],
  }) : _experience = experience,
       _education = education,
       _skills = skills,
       _projects = projects,
       _certifications = certifications,
       _achievements = achievements;

  factory _$ResumeContentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeContentModelImplFromJson(json);

  @override
  final HeaderSection header;
  @override
  final String? summary;
  final List<ExperienceSection> _experience;
  @override
  @JsonKey()
  List<ExperienceSection> get experience {
    if (_experience is EqualUnmodifiableListView) return _experience;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experience);
  }

  final List<EducationSection> _education;
  @override
  @JsonKey()
  List<EducationSection> get education {
    if (_education is EqualUnmodifiableListView) return _education;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_education);
  }

  final List<SkillSection> _skills;
  @override
  @JsonKey()
  List<SkillSection> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<ProjectSection> _projects;
  @override
  @JsonKey()
  List<ProjectSection> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final List<CertificationSection> _certifications;
  @override
  @JsonKey()
  List<CertificationSection> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  final List<AchievementSection> _achievements;
  @override
  @JsonKey()
  List<AchievementSection> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  String toString() {
    return 'ResumeContentModel(header: $header, summary: $summary, experience: $experience, education: $education, skills: $skills, projects: $projects, certifications: $certifications, achievements: $achievements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeContentModelImpl &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(
              other._experience,
              _experience,
            ) &&
            const DeepCollectionEquality().equals(
              other._education,
              _education,
            ) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality().equals(
              other._certifications,
              _certifications,
            ) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    header,
    summary,
    const DeepCollectionEquality().hash(_experience),
    const DeepCollectionEquality().hash(_education),
    const DeepCollectionEquality().hash(_skills),
    const DeepCollectionEquality().hash(_projects),
    const DeepCollectionEquality().hash(_certifications),
    const DeepCollectionEquality().hash(_achievements),
  );

  /// Create a copy of ResumeContentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeContentModelImplCopyWith<_$ResumeContentModelImpl> get copyWith =>
      __$$ResumeContentModelImplCopyWithImpl<_$ResumeContentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeContentModelImplToJson(this);
  }
}

abstract class _ResumeContentModel implements ResumeContentModel {
  const factory _ResumeContentModel({
    required final HeaderSection header,
    final String? summary,
    final List<ExperienceSection> experience,
    final List<EducationSection> education,
    final List<SkillSection> skills,
    final List<ProjectSection> projects,
    final List<CertificationSection> certifications,
    final List<AchievementSection> achievements,
  }) = _$ResumeContentModelImpl;

  factory _ResumeContentModel.fromJson(Map<String, dynamic> json) =
      _$ResumeContentModelImpl.fromJson;

  @override
  HeaderSection get header;
  @override
  String? get summary;
  @override
  List<ExperienceSection> get experience;
  @override
  List<EducationSection> get education;
  @override
  List<SkillSection> get skills;
  @override
  List<ProjectSection> get projects;
  @override
  List<CertificationSection> get certifications;
  @override
  List<AchievementSection> get achievements;

  /// Create a copy of ResumeContentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeContentModelImplCopyWith<_$ResumeContentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeaderSection _$HeaderSectionFromJson(Map<String, dynamic> json) {
  return _HeaderSection.fromJson(json);
}

/// @nodoc
mixin _$HeaderSection {
  String get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get linkedIn => throw _privateConstructorUsedError;
  String? get github => throw _privateConstructorUsedError;
  String? get portfolio => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  /// Serializes this HeaderSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeaderSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeaderSectionCopyWith<HeaderSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderSectionCopyWith<$Res> {
  factory $HeaderSectionCopyWith(
    HeaderSection value,
    $Res Function(HeaderSection) then,
  ) = _$HeaderSectionCopyWithImpl<$Res, HeaderSection>;
  @useResult
  $Res call({
    String fullName,
    String? phone,
    String? email,
    String? location,
    String? linkedIn,
    String? github,
    String? portfolio,
    String? website,
  });
}

/// @nodoc
class _$HeaderSectionCopyWithImpl<$Res, $Val extends HeaderSection>
    implements $HeaderSectionCopyWith<$Res> {
  _$HeaderSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeaderSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? linkedIn = freezed,
    Object? github = freezed,
    Object? portfolio = freezed,
    Object? website = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            linkedIn: freezed == linkedIn
                ? _value.linkedIn
                : linkedIn // ignore: cast_nullable_to_non_nullable
                      as String?,
            github: freezed == github
                ? _value.github
                : github // ignore: cast_nullable_to_non_nullable
                      as String?,
            portfolio: freezed == portfolio
                ? _value.portfolio
                : portfolio // ignore: cast_nullable_to_non_nullable
                      as String?,
            website: freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HeaderSectionImplCopyWith<$Res>
    implements $HeaderSectionCopyWith<$Res> {
  factory _$$HeaderSectionImplCopyWith(
    _$HeaderSectionImpl value,
    $Res Function(_$HeaderSectionImpl) then,
  ) = __$$HeaderSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fullName,
    String? phone,
    String? email,
    String? location,
    String? linkedIn,
    String? github,
    String? portfolio,
    String? website,
  });
}

/// @nodoc
class __$$HeaderSectionImplCopyWithImpl<$Res>
    extends _$HeaderSectionCopyWithImpl<$Res, _$HeaderSectionImpl>
    implements _$$HeaderSectionImplCopyWith<$Res> {
  __$$HeaderSectionImplCopyWithImpl(
    _$HeaderSectionImpl _value,
    $Res Function(_$HeaderSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HeaderSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? linkedIn = freezed,
    Object? github = freezed,
    Object? portfolio = freezed,
    Object? website = freezed,
  }) {
    return _then(
      _$HeaderSectionImpl(
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        linkedIn: freezed == linkedIn
            ? _value.linkedIn
            : linkedIn // ignore: cast_nullable_to_non_nullable
                  as String?,
        github: freezed == github
            ? _value.github
            : github // ignore: cast_nullable_to_non_nullable
                  as String?,
        portfolio: freezed == portfolio
            ? _value.portfolio
            : portfolio // ignore: cast_nullable_to_non_nullable
                  as String?,
        website: freezed == website
            ? _value.website
            : website // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HeaderSectionImpl implements _HeaderSection {
  const _$HeaderSectionImpl({
    required this.fullName,
    this.phone,
    this.email,
    this.location,
    this.linkedIn,
    this.github,
    this.portfolio,
    this.website,
  });

  factory _$HeaderSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeaderSectionImplFromJson(json);

  @override
  final String fullName;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? location;
  @override
  final String? linkedIn;
  @override
  final String? github;
  @override
  final String? portfolio;
  @override
  final String? website;

  @override
  String toString() {
    return 'HeaderSection(fullName: $fullName, phone: $phone, email: $email, location: $location, linkedIn: $linkedIn, github: $github, portfolio: $portfolio, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderSectionImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.linkedIn, linkedIn) ||
                other.linkedIn == linkedIn) &&
            (identical(other.github, github) || other.github == github) &&
            (identical(other.portfolio, portfolio) ||
                other.portfolio == portfolio) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fullName,
    phone,
    email,
    location,
    linkedIn,
    github,
    portfolio,
    website,
  );

  /// Create a copy of HeaderSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderSectionImplCopyWith<_$HeaderSectionImpl> get copyWith =>
      __$$HeaderSectionImplCopyWithImpl<_$HeaderSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeaderSectionImplToJson(this);
  }
}

abstract class _HeaderSection implements HeaderSection {
  const factory _HeaderSection({
    required final String fullName,
    final String? phone,
    final String? email,
    final String? location,
    final String? linkedIn,
    final String? github,
    final String? portfolio,
    final String? website,
  }) = _$HeaderSectionImpl;

  factory _HeaderSection.fromJson(Map<String, dynamic> json) =
      _$HeaderSectionImpl.fromJson;

  @override
  String get fullName;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get location;
  @override
  String? get linkedIn;
  @override
  String? get github;
  @override
  String? get portfolio;
  @override
  String? get website;

  /// Create a copy of HeaderSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeaderSectionImplCopyWith<_$HeaderSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExperienceSection _$ExperienceSectionFromJson(Map<String, dynamic> json) {
  return _ExperienceSection.fromJson(json);
}

/// @nodoc
mixin _$ExperienceSection {
  String get id => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isCurrentlyWorking => throw _privateConstructorUsedError;
  List<String> get bulletPoints => throw _privateConstructorUsedError;
  List<String> get technologies => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this ExperienceSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExperienceSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceSectionCopyWith<ExperienceSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceSectionCopyWith<$Res> {
  factory $ExperienceSectionCopyWith(
    ExperienceSection value,
    $Res Function(ExperienceSection) then,
  ) = _$ExperienceSectionCopyWithImpl<$Res, ExperienceSection>;
  @useResult
  $Res call({
    String id,
    String company,
    String jobTitle,
    String? location,
    DateTime startDate,
    DateTime? endDate,
    bool isCurrentlyWorking,
    List<String> bulletPoints,
    List<String> technologies,
    int order,
  });
}

/// @nodoc
class _$ExperienceSectionCopyWithImpl<$Res, $Val extends ExperienceSection>
    implements $ExperienceSectionCopyWith<$Res> {
  _$ExperienceSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExperienceSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? jobTitle = null,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrentlyWorking = null,
    Object? bulletPoints = null,
    Object? technologies = null,
    Object? order = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            company: null == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                      as String,
            jobTitle: null == jobTitle
                ? _value.jobTitle
                : jobTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isCurrentlyWorking: null == isCurrentlyWorking
                ? _value.isCurrentlyWorking
                : isCurrentlyWorking // ignore: cast_nullable_to_non_nullable
                      as bool,
            bulletPoints: null == bulletPoints
                ? _value.bulletPoints
                : bulletPoints // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            technologies: null == technologies
                ? _value.technologies
                : technologies // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExperienceSectionImplCopyWith<$Res>
    implements $ExperienceSectionCopyWith<$Res> {
  factory _$$ExperienceSectionImplCopyWith(
    _$ExperienceSectionImpl value,
    $Res Function(_$ExperienceSectionImpl) then,
  ) = __$$ExperienceSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String company,
    String jobTitle,
    String? location,
    DateTime startDate,
    DateTime? endDate,
    bool isCurrentlyWorking,
    List<String> bulletPoints,
    List<String> technologies,
    int order,
  });
}

/// @nodoc
class __$$ExperienceSectionImplCopyWithImpl<$Res>
    extends _$ExperienceSectionCopyWithImpl<$Res, _$ExperienceSectionImpl>
    implements _$$ExperienceSectionImplCopyWith<$Res> {
  __$$ExperienceSectionImplCopyWithImpl(
    _$ExperienceSectionImpl _value,
    $Res Function(_$ExperienceSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExperienceSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? jobTitle = null,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrentlyWorking = null,
    Object? bulletPoints = null,
    Object? technologies = null,
    Object? order = null,
  }) {
    return _then(
      _$ExperienceSectionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        company: null == company
            ? _value.company
            : company // ignore: cast_nullable_to_non_nullable
                  as String,
        jobTitle: null == jobTitle
            ? _value.jobTitle
            : jobTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isCurrentlyWorking: null == isCurrentlyWorking
            ? _value.isCurrentlyWorking
            : isCurrentlyWorking // ignore: cast_nullable_to_non_nullable
                  as bool,
        bulletPoints: null == bulletPoints
            ? _value._bulletPoints
            : bulletPoints // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        technologies: null == technologies
            ? _value._technologies
            : technologies // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceSectionImpl implements _ExperienceSection {
  const _$ExperienceSectionImpl({
    required this.id,
    required this.company,
    required this.jobTitle,
    this.location,
    required this.startDate,
    this.endDate,
    this.isCurrentlyWorking = false,
    final List<String> bulletPoints = const [],
    final List<String> technologies = const [],
    this.order = 0,
  }) : _bulletPoints = bulletPoints,
       _technologies = technologies;

  factory _$ExperienceSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String company;
  @override
  final String jobTitle;
  @override
  final String? location;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool isCurrentlyWorking;
  final List<String> _bulletPoints;
  @override
  @JsonKey()
  List<String> get bulletPoints {
    if (_bulletPoints is EqualUnmodifiableListView) return _bulletPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bulletPoints);
  }

  final List<String> _technologies;
  @override
  @JsonKey()
  List<String> get technologies {
    if (_technologies is EqualUnmodifiableListView) return _technologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_technologies);
  }

  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'ExperienceSection(id: $id, company: $company, jobTitle: $jobTitle, location: $location, startDate: $startDate, endDate: $endDate, isCurrentlyWorking: $isCurrentlyWorking, bulletPoints: $bulletPoints, technologies: $technologies, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrentlyWorking, isCurrentlyWorking) ||
                other.isCurrentlyWorking == isCurrentlyWorking) &&
            const DeepCollectionEquality().equals(
              other._bulletPoints,
              _bulletPoints,
            ) &&
            const DeepCollectionEquality().equals(
              other._technologies,
              _technologies,
            ) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    company,
    jobTitle,
    location,
    startDate,
    endDate,
    isCurrentlyWorking,
    const DeepCollectionEquality().hash(_bulletPoints),
    const DeepCollectionEquality().hash(_technologies),
    order,
  );

  /// Create a copy of ExperienceSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceSectionImplCopyWith<_$ExperienceSectionImpl> get copyWith =>
      __$$ExperienceSectionImplCopyWithImpl<_$ExperienceSectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceSectionImplToJson(this);
  }
}

abstract class _ExperienceSection implements ExperienceSection {
  const factory _ExperienceSection({
    required final String id,
    required final String company,
    required final String jobTitle,
    final String? location,
    required final DateTime startDate,
    final DateTime? endDate,
    final bool isCurrentlyWorking,
    final List<String> bulletPoints,
    final List<String> technologies,
    final int order,
  }) = _$ExperienceSectionImpl;

  factory _ExperienceSection.fromJson(Map<String, dynamic> json) =
      _$ExperienceSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get company;
  @override
  String get jobTitle;
  @override
  String? get location;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isCurrentlyWorking;
  @override
  List<String> get bulletPoints;
  @override
  List<String> get technologies;
  @override
  int get order;

  /// Create a copy of ExperienceSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceSectionImplCopyWith<_$ExperienceSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EducationSection _$EducationSectionFromJson(Map<String, dynamic> json) {
  return _EducationSection.fromJson(json);
}

/// @nodoc
mixin _$EducationSection {
  String get id => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get degree => throw _privateConstructorUsedError;
  String? get field => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get gpa => throw _privateConstructorUsedError;
  List<String> get achievements => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this EducationSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationSectionCopyWith<EducationSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationSectionCopyWith<$Res> {
  factory $EducationSectionCopyWith(
    EducationSection value,
    $Res Function(EducationSection) then,
  ) = _$EducationSectionCopyWithImpl<$Res, EducationSection>;
  @useResult
  $Res call({
    String id,
    String institution,
    String degree,
    String? field,
    DateTime startDate,
    DateTime? endDate,
    String? gpa,
    List<String> achievements,
    int order,
  });
}

/// @nodoc
class _$EducationSectionCopyWithImpl<$Res, $Val extends EducationSection>
    implements $EducationSectionCopyWith<$Res> {
  _$EducationSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? institution = null,
    Object? degree = null,
    Object? field = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? gpa = freezed,
    Object? achievements = null,
    Object? order = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            institution: null == institution
                ? _value.institution
                : institution // ignore: cast_nullable_to_non_nullable
                      as String,
            degree: null == degree
                ? _value.degree
                : degree // ignore: cast_nullable_to_non_nullable
                      as String,
            field: freezed == field
                ? _value.field
                : field // ignore: cast_nullable_to_non_nullable
                      as String?,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            gpa: freezed == gpa
                ? _value.gpa
                : gpa // ignore: cast_nullable_to_non_nullable
                      as String?,
            achievements: null == achievements
                ? _value.achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EducationSectionImplCopyWith<$Res>
    implements $EducationSectionCopyWith<$Res> {
  factory _$$EducationSectionImplCopyWith(
    _$EducationSectionImpl value,
    $Res Function(_$EducationSectionImpl) then,
  ) = __$$EducationSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String institution,
    String degree,
    String? field,
    DateTime startDate,
    DateTime? endDate,
    String? gpa,
    List<String> achievements,
    int order,
  });
}

/// @nodoc
class __$$EducationSectionImplCopyWithImpl<$Res>
    extends _$EducationSectionCopyWithImpl<$Res, _$EducationSectionImpl>
    implements _$$EducationSectionImplCopyWith<$Res> {
  __$$EducationSectionImplCopyWithImpl(
    _$EducationSectionImpl _value,
    $Res Function(_$EducationSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EducationSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? institution = null,
    Object? degree = null,
    Object? field = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? gpa = freezed,
    Object? achievements = null,
    Object? order = null,
  }) {
    return _then(
      _$EducationSectionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        institution: null == institution
            ? _value.institution
            : institution // ignore: cast_nullable_to_non_nullable
                  as String,
        degree: null == degree
            ? _value.degree
            : degree // ignore: cast_nullable_to_non_nullable
                  as String,
        field: freezed == field
            ? _value.field
            : field // ignore: cast_nullable_to_non_nullable
                  as String?,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        gpa: freezed == gpa
            ? _value.gpa
            : gpa // ignore: cast_nullable_to_non_nullable
                  as String?,
        achievements: null == achievements
            ? _value._achievements
            : achievements // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationSectionImpl implements _EducationSection {
  const _$EducationSectionImpl({
    required this.id,
    required this.institution,
    required this.degree,
    this.field,
    required this.startDate,
    this.endDate,
    this.gpa,
    final List<String> achievements = const [],
    this.order = 0,
  }) : _achievements = achievements;

  factory _$EducationSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String institution;
  @override
  final String degree;
  @override
  final String? field;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final String? gpa;
  final List<String> _achievements;
  @override
  @JsonKey()
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'EducationSection(id: $id, institution: $institution, degree: $degree, field: $field, startDate: $startDate, endDate: $endDate, gpa: $gpa, achievements: $achievements, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.gpa, gpa) || other.gpa == gpa) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    institution,
    degree,
    field,
    startDate,
    endDate,
    gpa,
    const DeepCollectionEquality().hash(_achievements),
    order,
  );

  /// Create a copy of EducationSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationSectionImplCopyWith<_$EducationSectionImpl> get copyWith =>
      __$$EducationSectionImplCopyWithImpl<_$EducationSectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationSectionImplToJson(this);
  }
}

abstract class _EducationSection implements EducationSection {
  const factory _EducationSection({
    required final String id,
    required final String institution,
    required final String degree,
    final String? field,
    required final DateTime startDate,
    final DateTime? endDate,
    final String? gpa,
    final List<String> achievements,
    final int order,
  }) = _$EducationSectionImpl;

  factory _EducationSection.fromJson(Map<String, dynamic> json) =
      _$EducationSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get institution;
  @override
  String get degree;
  @override
  String? get field;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get gpa;
  @override
  List<String> get achievements;
  @override
  int get order;

  /// Create a copy of EducationSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationSectionImplCopyWith<_$EducationSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SkillSection _$SkillSectionFromJson(Map<String, dynamic> json) {
  return _SkillSection.fromJson(json);
}

/// @nodoc
mixin _$SkillSection {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this SkillSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SkillSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SkillSectionCopyWith<SkillSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillSectionCopyWith<$Res> {
  factory $SkillSectionCopyWith(
    SkillSection value,
    $Res Function(SkillSection) then,
  ) = _$SkillSectionCopyWithImpl<$Res, SkillSection>;
  @useResult
  $Res call({String id, String category, List<String> skills, int order});
}

/// @nodoc
class _$SkillSectionCopyWithImpl<$Res, $Val extends SkillSection>
    implements $SkillSectionCopyWith<$Res> {
  _$SkillSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SkillSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? skills = null,
    Object? order = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            skills: null == skills
                ? _value.skills
                : skills // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SkillSectionImplCopyWith<$Res>
    implements $SkillSectionCopyWith<$Res> {
  factory _$$SkillSectionImplCopyWith(
    _$SkillSectionImpl value,
    $Res Function(_$SkillSectionImpl) then,
  ) = __$$SkillSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String category, List<String> skills, int order});
}

/// @nodoc
class __$$SkillSectionImplCopyWithImpl<$Res>
    extends _$SkillSectionCopyWithImpl<$Res, _$SkillSectionImpl>
    implements _$$SkillSectionImplCopyWith<$Res> {
  __$$SkillSectionImplCopyWithImpl(
    _$SkillSectionImpl _value,
    $Res Function(_$SkillSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkillSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? skills = null,
    Object? order = null,
  }) {
    return _then(
      _$SkillSectionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        skills: null == skills
            ? _value._skills
            : skills // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillSectionImpl implements _SkillSection {
  const _$SkillSectionImpl({
    required this.id,
    required this.category,
    final List<String> skills = const [],
    this.order = 0,
  }) : _skills = skills;

  factory _$SkillSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String category;
  final List<String> _skills;
  @override
  @JsonKey()
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'SkillSection(id: $id, category: $category, skills: $skills, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    category,
    const DeepCollectionEquality().hash(_skills),
    order,
  );

  /// Create a copy of SkillSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillSectionImplCopyWith<_$SkillSectionImpl> get copyWith =>
      __$$SkillSectionImplCopyWithImpl<_$SkillSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillSectionImplToJson(this);
  }
}

abstract class _SkillSection implements SkillSection {
  const factory _SkillSection({
    required final String id,
    required final String category,
    final List<String> skills,
    final int order,
  }) = _$SkillSectionImpl;

  factory _SkillSection.fromJson(Map<String, dynamic> json) =
      _$SkillSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  List<String> get skills;
  @override
  int get order;

  /// Create a copy of SkillSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SkillSectionImplCopyWith<_$SkillSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectSection _$ProjectSectionFromJson(Map<String, dynamic> json) {
  return _ProjectSection.fromJson(json);
}

/// @nodoc
mixin _$ProjectSection {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get technologies => throw _privateConstructorUsedError;
  List<String> get achievements => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this ProjectSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectSectionCopyWith<ProjectSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSectionCopyWith<$Res> {
  factory $ProjectSectionCopyWith(
    ProjectSection value,
    $Res Function(ProjectSection) then,
  ) = _$ProjectSectionCopyWithImpl<$Res, ProjectSection>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    List<String> technologies,
    List<String> achievements,
    String? link,
    DateTime? date,
    int order,
  });
}

/// @nodoc
class _$ProjectSectionCopyWithImpl<$Res, $Val extends ProjectSection>
    implements $ProjectSectionCopyWith<$Res> {
  _$ProjectSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? technologies = null,
    Object? achievements = null,
    Object? link = freezed,
    Object? date = freezed,
    Object? order = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            technologies: null == technologies
                ? _value.technologies
                : technologies // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            achievements: null == achievements
                ? _value.achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            link: freezed == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectSectionImplCopyWith<$Res>
    implements $ProjectSectionCopyWith<$Res> {
  factory _$$ProjectSectionImplCopyWith(
    _$ProjectSectionImpl value,
    $Res Function(_$ProjectSectionImpl) then,
  ) = __$$ProjectSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    List<String> technologies,
    List<String> achievements,
    String? link,
    DateTime? date,
    int order,
  });
}

/// @nodoc
class __$$ProjectSectionImplCopyWithImpl<$Res>
    extends _$ProjectSectionCopyWithImpl<$Res, _$ProjectSectionImpl>
    implements _$$ProjectSectionImplCopyWith<$Res> {
  __$$ProjectSectionImplCopyWithImpl(
    _$ProjectSectionImpl _value,
    $Res Function(_$ProjectSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? technologies = null,
    Object? achievements = null,
    Object? link = freezed,
    Object? date = freezed,
    Object? order = null,
  }) {
    return _then(
      _$ProjectSectionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        technologies: null == technologies
            ? _value._technologies
            : technologies // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        achievements: null == achievements
            ? _value._achievements
            : achievements // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        link: freezed == link
            ? _value.link
            : link // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectSectionImpl implements _ProjectSection {
  const _$ProjectSectionImpl({
    required this.id,
    required this.title,
    required this.description,
    final List<String> technologies = const [],
    final List<String> achievements = const [],
    this.link,
    this.date,
    this.order = 0,
  }) : _technologies = technologies,
       _achievements = achievements;

  factory _$ProjectSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<String> _technologies;
  @override
  @JsonKey()
  List<String> get technologies {
    if (_technologies is EqualUnmodifiableListView) return _technologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_technologies);
  }

  final List<String> _achievements;
  @override
  @JsonKey()
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  final String? link;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'ProjectSection(id: $id, title: $title, description: $description, technologies: $technologies, achievements: $achievements, link: $link, date: $date, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._technologies,
              _technologies,
            ) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    const DeepCollectionEquality().hash(_technologies),
    const DeepCollectionEquality().hash(_achievements),
    link,
    date,
    order,
  );

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSectionImplCopyWith<_$ProjectSectionImpl> get copyWith =>
      __$$ProjectSectionImplCopyWithImpl<_$ProjectSectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectSectionImplToJson(this);
  }
}

abstract class _ProjectSection implements ProjectSection {
  const factory _ProjectSection({
    required final String id,
    required final String title,
    required final String description,
    final List<String> technologies,
    final List<String> achievements,
    final String? link,
    final DateTime? date,
    final int order,
  }) = _$ProjectSectionImpl;

  factory _ProjectSection.fromJson(Map<String, dynamic> json) =
      _$ProjectSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get technologies;
  @override
  List<String> get achievements;
  @override
  String? get link;
  @override
  DateTime? get date;
  @override
  int get order;

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectSectionImplCopyWith<_$ProjectSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CertificationSection _$CertificationSectionFromJson(Map<String, dynamic> json) {
  return _CertificationSection.fromJson(json);
}

/// @nodoc
mixin _$CertificationSection {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get issuer => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get credentialLink => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this CertificationSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificationSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationSectionCopyWith<CertificationSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationSectionCopyWith<$Res> {
  factory $CertificationSectionCopyWith(
    CertificationSection value,
    $Res Function(CertificationSection) then,
  ) = _$CertificationSectionCopyWithImpl<$Res, CertificationSection>;
  @useResult
  $Res call({
    String id,
    String name,
    String issuer,
    DateTime? date,
    String? credentialLink,
    int order,
  });
}

/// @nodoc
class _$CertificationSectionCopyWithImpl<
  $Res,
  $Val extends CertificationSection
>
    implements $CertificationSectionCopyWith<$Res> {
  _$CertificationSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificationSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? issuer = null,
    Object? date = freezed,
    Object? credentialLink = freezed,
    Object? order = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            issuer: null == issuer
                ? _value.issuer
                : issuer // ignore: cast_nullable_to_non_nullable
                      as String,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            credentialLink: freezed == credentialLink
                ? _value.credentialLink
                : credentialLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CertificationSectionImplCopyWith<$Res>
    implements $CertificationSectionCopyWith<$Res> {
  factory _$$CertificationSectionImplCopyWith(
    _$CertificationSectionImpl value,
    $Res Function(_$CertificationSectionImpl) then,
  ) = __$$CertificationSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String issuer,
    DateTime? date,
    String? credentialLink,
    int order,
  });
}

/// @nodoc
class __$$CertificationSectionImplCopyWithImpl<$Res>
    extends _$CertificationSectionCopyWithImpl<$Res, _$CertificationSectionImpl>
    implements _$$CertificationSectionImplCopyWith<$Res> {
  __$$CertificationSectionImplCopyWithImpl(
    _$CertificationSectionImpl _value,
    $Res Function(_$CertificationSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CertificationSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? issuer = null,
    Object? date = freezed,
    Object? credentialLink = freezed,
    Object? order = null,
  }) {
    return _then(
      _$CertificationSectionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        issuer: null == issuer
            ? _value.issuer
            : issuer // ignore: cast_nullable_to_non_nullable
                  as String,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        credentialLink: freezed == credentialLink
            ? _value.credentialLink
            : credentialLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificationSectionImpl implements _CertificationSection {
  const _$CertificationSectionImpl({
    required this.id,
    required this.name,
    required this.issuer,
    this.date,
    this.credentialLink,
    this.order = 0,
  });

  factory _$CertificationSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificationSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String issuer;
  @override
  final DateTime? date;
  @override
  final String? credentialLink;
  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'CertificationSection(id: $id, name: $name, issuer: $issuer, date: $date, credentialLink: $credentialLink, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.credentialLink, credentialLink) ||
                other.credentialLink == credentialLink) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, issuer, date, credentialLink, order);

  /// Create a copy of CertificationSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationSectionImplCopyWith<_$CertificationSectionImpl>
  get copyWith =>
      __$$CertificationSectionImplCopyWithImpl<_$CertificationSectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationSectionImplToJson(this);
  }
}

abstract class _CertificationSection implements CertificationSection {
  const factory _CertificationSection({
    required final String id,
    required final String name,
    required final String issuer,
    final DateTime? date,
    final String? credentialLink,
    final int order,
  }) = _$CertificationSectionImpl;

  factory _CertificationSection.fromJson(Map<String, dynamic> json) =
      _$CertificationSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get issuer;
  @override
  DateTime? get date;
  @override
  String? get credentialLink;
  @override
  int get order;

  /// Create a copy of CertificationSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationSectionImplCopyWith<_$CertificationSectionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AchievementSection _$AchievementSectionFromJson(Map<String, dynamic> json) {
  return _AchievementSection.fromJson(json);
}

/// @nodoc
mixin _$AchievementSection {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this AchievementSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementSectionCopyWith<AchievementSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementSectionCopyWith<$Res> {
  factory $AchievementSectionCopyWith(
    AchievementSection value,
    $Res Function(AchievementSection) then,
  ) = _$AchievementSectionCopyWithImpl<$Res, AchievementSection>;
  @useResult
  $Res call({
    String id,
    String title,
    String? organization,
    DateTime? date,
    String? description,
    int order,
  });
}

/// @nodoc
class _$AchievementSectionCopyWithImpl<$Res, $Val extends AchievementSection>
    implements $AchievementSectionCopyWith<$Res> {
  _$AchievementSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? organization = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? order = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            organization: freezed == organization
                ? _value.organization
                : organization // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AchievementSectionImplCopyWith<$Res>
    implements $AchievementSectionCopyWith<$Res> {
  factory _$$AchievementSectionImplCopyWith(
    _$AchievementSectionImpl value,
    $Res Function(_$AchievementSectionImpl) then,
  ) = __$$AchievementSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String? organization,
    DateTime? date,
    String? description,
    int order,
  });
}

/// @nodoc
class __$$AchievementSectionImplCopyWithImpl<$Res>
    extends _$AchievementSectionCopyWithImpl<$Res, _$AchievementSectionImpl>
    implements _$$AchievementSectionImplCopyWith<$Res> {
  __$$AchievementSectionImplCopyWithImpl(
    _$AchievementSectionImpl _value,
    $Res Function(_$AchievementSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AchievementSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? organization = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? order = null,
  }) {
    return _then(
      _$AchievementSectionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        organization: freezed == organization
            ? _value.organization
            : organization // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementSectionImpl implements _AchievementSection {
  const _$AchievementSectionImpl({
    required this.id,
    required this.title,
    this.organization,
    this.date,
    this.description,
    this.order = 0,
  });

  factory _$AchievementSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? organization;
  @override
  final DateTime? date;
  @override
  final String? description;
  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'AchievementSection(id: $id, title: $title, organization: $organization, date: $date, description: $description, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    organization,
    date,
    description,
    order,
  );

  /// Create a copy of AchievementSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementSectionImplCopyWith<_$AchievementSectionImpl> get copyWith =>
      __$$AchievementSectionImplCopyWithImpl<_$AchievementSectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementSectionImplToJson(this);
  }
}

abstract class _AchievementSection implements AchievementSection {
  const factory _AchievementSection({
    required final String id,
    required final String title,
    final String? organization,
    final DateTime? date,
    final String? description,
    final int order,
  }) = _$AchievementSectionImpl;

  factory _AchievementSection.fromJson(Map<String, dynamic> json) =
      _$AchievementSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get organization;
  @override
  DateTime? get date;
  @override
  String? get description;
  @override
  int get order;

  /// Create a copy of AchievementSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementSectionImplCopyWith<_$AchievementSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
