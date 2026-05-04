import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_content_model.freezed.dart';
part 'resume_content_model.g.dart';

/// Resume content structure
@freezed
class ResumeContentModel with _$ResumeContentModel {
  const factory ResumeContentModel({
    required HeaderSection header,
    String? summary,
    @Default([]) List<ExperienceSection> experience,
    @Default([]) List<EducationSection> education,
    @Default([]) List<SkillSection> skills,
    @Default([]) List<ProjectSection> projects,
    @Default([]) List<CertificationSection> certifications,
    @Default([]) List<AchievementSection> achievements,
  }) = _ResumeContentModel;

  factory ResumeContentModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeContentModelFromJson(json);
}

/// Header section
@freezed
class HeaderSection with _$HeaderSection {
  const factory HeaderSection({
    required String fullName,
    String? phone,
    String? email,
    String? location,
    String? linkedIn,
    String? github,
    String? portfolio,
    String? website,
  }) = _HeaderSection;

  factory HeaderSection.fromJson(Map<String, dynamic> json) =>
      _$HeaderSectionFromJson(json);
}

/// Experience section
@freezed
class ExperienceSection with _$ExperienceSection {
  const factory ExperienceSection({
    required String id,
    required String company,
    required String jobTitle,
    String? location,
    required DateTime startDate,
    DateTime? endDate,
    @Default(false) bool isCurrentlyWorking,
    @Default([]) List<String> bulletPoints,
    @Default([]) List<String> technologies,
    @Default(0) int order,
  }) = _ExperienceSection;

  factory ExperienceSection.fromJson(Map<String, dynamic> json) =>
      _$ExperienceSectionFromJson(json);
}

/// Education section
@freezed
class EducationSection with _$EducationSection {
  const factory EducationSection({
    required String id,
    required String institution,
    required String degree,
    String? field,
    required DateTime startDate,
    DateTime? endDate,
    String? gpa,
    @Default([]) List<String> achievements,
    @Default(0) int order,
  }) = _EducationSection;

  factory EducationSection.fromJson(Map<String, dynamic> json) =>
      _$EducationSectionFromJson(json);
}

/// Skill section
@freezed
class SkillSection with _$SkillSection {
  const factory SkillSection({
    required String id,
    required String category,
    @Default([]) List<String> skills,
    @Default(0) int order,
  }) = _SkillSection;

  factory SkillSection.fromJson(Map<String, dynamic> json) =>
      _$SkillSectionFromJson(json);
}

/// Project section
@freezed
class ProjectSection with _$ProjectSection {
  const factory ProjectSection({
    required String id,
    required String title,
    required String description,
    @Default([]) List<String> technologies,
    @Default([]) List<String> achievements,
    String? link,
    DateTime? date,
    @Default(0) int order,
  }) = _ProjectSection;

  factory ProjectSection.fromJson(Map<String, dynamic> json) =>
      _$ProjectSectionFromJson(json);
}

/// Certification section
@freezed
class CertificationSection with _$CertificationSection {
  const factory CertificationSection({
    required String id,
    required String name,
    required String issuer,
    DateTime? date,
    String? credentialLink,
    @Default(0) int order,
  }) = _CertificationSection;

  factory CertificationSection.fromJson(Map<String, dynamic> json) =>
      _$CertificationSectionFromJson(json);
}

/// Achievement section
@freezed
class AchievementSection with _$AchievementSection {
  const factory AchievementSection({
    required String id,
    required String title,
    String? organization,
    DateTime? date,
    String? description,
    @Default(0) int order,
  }) = _AchievementSection;

  factory AchievementSection.fromJson(Map<String, dynamic> json) =>
      _$AchievementSectionFromJson(json);
}
