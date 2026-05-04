// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeContentModelImpl _$$ResumeContentModelImplFromJson(
  Map<String, dynamic> json,
) => _$ResumeContentModelImpl(
  header: HeaderSection.fromJson(json['header'] as Map<String, dynamic>),
  summary: json['summary'] as String?,
  experience:
      (json['experience'] as List<dynamic>?)
          ?.map((e) => ExperienceSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  education:
      (json['education'] as List<dynamic>?)
          ?.map((e) => EducationSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  skills:
      (json['skills'] as List<dynamic>?)
          ?.map((e) => SkillSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  projects:
      (json['projects'] as List<dynamic>?)
          ?.map((e) => ProjectSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  certifications:
      (json['certifications'] as List<dynamic>?)
          ?.map((e) => CertificationSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  achievements:
      (json['achievements'] as List<dynamic>?)
          ?.map((e) => AchievementSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ResumeContentModelImplToJson(
  _$ResumeContentModelImpl instance,
) => <String, dynamic>{
  'header': instance.header,
  'summary': instance.summary,
  'experience': instance.experience,
  'education': instance.education,
  'skills': instance.skills,
  'projects': instance.projects,
  'certifications': instance.certifications,
  'achievements': instance.achievements,
};

_$HeaderSectionImpl _$$HeaderSectionImplFromJson(Map<String, dynamic> json) =>
    _$HeaderSectionImpl(
      fullName: json['fullName'] as String,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      linkedIn: json['linkedIn'] as String?,
      github: json['github'] as String?,
      portfolio: json['portfolio'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$$HeaderSectionImplToJson(_$HeaderSectionImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'email': instance.email,
      'location': instance.location,
      'linkedIn': instance.linkedIn,
      'github': instance.github,
      'portfolio': instance.portfolio,
      'website': instance.website,
    };

_$ExperienceSectionImpl _$$ExperienceSectionImplFromJson(
  Map<String, dynamic> json,
) => _$ExperienceSectionImpl(
  id: json['id'] as String,
  company: json['company'] as String,
  jobTitle: json['jobTitle'] as String,
  location: json['location'] as String?,
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  isCurrentlyWorking: json['isCurrentlyWorking'] as bool? ?? false,
  bulletPoints:
      (json['bulletPoints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  technologies:
      (json['technologies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$ExperienceSectionImplToJson(
  _$ExperienceSectionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'company': instance.company,
  'jobTitle': instance.jobTitle,
  'location': instance.location,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate?.toIso8601String(),
  'isCurrentlyWorking': instance.isCurrentlyWorking,
  'bulletPoints': instance.bulletPoints,
  'technologies': instance.technologies,
  'order': instance.order,
};

_$EducationSectionImpl _$$EducationSectionImplFromJson(
  Map<String, dynamic> json,
) => _$EducationSectionImpl(
  id: json['id'] as String,
  institution: json['institution'] as String,
  degree: json['degree'] as String,
  field: json['field'] as String?,
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  gpa: json['gpa'] as String?,
  achievements:
      (json['achievements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$EducationSectionImplToJson(
  _$EducationSectionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'institution': instance.institution,
  'degree': instance.degree,
  'field': instance.field,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate?.toIso8601String(),
  'gpa': instance.gpa,
  'achievements': instance.achievements,
  'order': instance.order,
};

_$SkillSectionImpl _$$SkillSectionImplFromJson(Map<String, dynamic> json) =>
    _$SkillSectionImpl(
      id: json['id'] as String,
      category: json['category'] as String,
      skills:
          (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SkillSectionImplToJson(_$SkillSectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'skills': instance.skills,
      'order': instance.order,
    };

_$ProjectSectionImpl _$$ProjectSectionImplFromJson(Map<String, dynamic> json) =>
    _$ProjectSectionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      technologies:
          (json['technologies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      achievements:
          (json['achievements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      link: json['link'] as String?,
      date: json['date'] == null
          ? null
          : DateTime.parse(json['date'] as String),
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProjectSectionImplToJson(
  _$ProjectSectionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'technologies': instance.technologies,
  'achievements': instance.achievements,
  'link': instance.link,
  'date': instance.date?.toIso8601String(),
  'order': instance.order,
};

_$CertificationSectionImpl _$$CertificationSectionImplFromJson(
  Map<String, dynamic> json,
) => _$CertificationSectionImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  issuer: json['issuer'] as String,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  credentialLink: json['credentialLink'] as String?,
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$CertificationSectionImplToJson(
  _$CertificationSectionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'issuer': instance.issuer,
  'date': instance.date?.toIso8601String(),
  'credentialLink': instance.credentialLink,
  'order': instance.order,
};

_$AchievementSectionImpl _$$AchievementSectionImplFromJson(
  Map<String, dynamic> json,
) => _$AchievementSectionImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  organization: json['organization'] as String?,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  description: json['description'] as String?,
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$AchievementSectionImplToJson(
  _$AchievementSectionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'organization': instance.organization,
  'date': instance.date?.toIso8601String(),
  'description': instance.description,
  'order': instance.order,
};
