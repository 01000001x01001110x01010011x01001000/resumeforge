// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firestoreHash() => r'ef4a6b0737caace50a6d79dd3e4e2aa1bc3031d5';

/// Firestore instance provider
///
/// Copied from [firestore].
@ProviderFor(firestore)
final firestoreProvider = AutoDisposeProvider<FirebaseFirestore>.internal(
  firestore,
  name: r'firestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirestoreRef = AutoDisposeProviderRef<FirebaseFirestore>;
String _$firestoreResumeSourceHash() =>
    r'2e9a5345ff52d8dbaa93a4c6b201fa71f4627b95';

/// Firestore resume source provider
///
/// Copied from [firestoreResumeSource].
@ProviderFor(firestoreResumeSource)
final firestoreResumeSourceProvider =
    AutoDisposeProvider<FirestoreResumeSource>.internal(
      firestoreResumeSource,
      name: r'firestoreResumeSourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$firestoreResumeSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirestoreResumeSourceRef =
    AutoDisposeProviderRef<FirestoreResumeSource>;
String _$resumeRepositoryHash() => r'3f40a7497ea33fa655ba3387a5fe015484fbcdb3';

/// Resume repository provider
///
/// Copied from [resumeRepository].
@ProviderFor(resumeRepository)
final resumeRepositoryProvider = AutoDisposeProvider<ResumeRepository>.internal(
  resumeRepository,
  name: r'resumeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$resumeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ResumeRepositoryRef = AutoDisposeProviderRef<ResumeRepository>;
String _$userResumesHash() => r'9b77f14cb14cd14f85c1df3d044472840d745842';

/// Watch all resumes for the current user
///
/// Copied from [userResumes].
@ProviderFor(userResumes)
final userResumesProvider =
    AutoDisposeStreamProvider<List<ResumeModel>>.internal(
      userResumes,
      name: r'userResumesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userResumesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserResumesRef = AutoDisposeStreamProviderRef<List<ResumeModel>>;
String _$resumeHash() => r'b1b1689303db8ab11fec0e4042664ac9958be78c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Watch a specific resume
///
/// Copied from [resume].
@ProviderFor(resume)
const resumeProvider = ResumeFamily();

/// Watch a specific resume
///
/// Copied from [resume].
class ResumeFamily extends Family<AsyncValue<ResumeModel?>> {
  /// Watch a specific resume
  ///
  /// Copied from [resume].
  const ResumeFamily();

  /// Watch a specific resume
  ///
  /// Copied from [resume].
  ResumeProvider call(String resumeId) {
    return ResumeProvider(resumeId);
  }

  @override
  ResumeProvider getProviderOverride(covariant ResumeProvider provider) {
    return call(provider.resumeId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'resumeProvider';
}

/// Watch a specific resume
///
/// Copied from [resume].
class ResumeProvider extends AutoDisposeStreamProvider<ResumeModel?> {
  /// Watch a specific resume
  ///
  /// Copied from [resume].
  ResumeProvider(String resumeId)
    : this._internal(
        (ref) => resume(ref as ResumeRef, resumeId),
        from: resumeProvider,
        name: r'resumeProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$resumeHash,
        dependencies: ResumeFamily._dependencies,
        allTransitiveDependencies: ResumeFamily._allTransitiveDependencies,
        resumeId: resumeId,
      );

  ResumeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.resumeId,
  }) : super.internal();

  final String resumeId;

  @override
  Override overrideWith(
    Stream<ResumeModel?> Function(ResumeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ResumeProvider._internal(
        (ref) => create(ref as ResumeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        resumeId: resumeId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<ResumeModel?> createElement() {
    return _ResumeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResumeProvider && other.resumeId == resumeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resumeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ResumeRef on AutoDisposeStreamProviderRef<ResumeModel?> {
  /// The parameter `resumeId` of this provider.
  String get resumeId;
}

class _ResumeProviderElement
    extends AutoDisposeStreamProviderElement<ResumeModel?>
    with ResumeRef {
  _ResumeProviderElement(super.provider);

  @override
  String get resumeId => (origin as ResumeProvider).resumeId;
}

String _$resumeControllerHash() => r'ab0b77c0720646a99390322d422b8ef7cf7dd88e';

/// Resume controller for managing resume operations
///
/// Copied from [ResumeController].
@ProviderFor(ResumeController)
final resumeControllerProvider =
    AutoDisposeAsyncNotifierProvider<ResumeController, void>.internal(
      ResumeController.new,
      name: r'resumeControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$resumeControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ResumeController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
