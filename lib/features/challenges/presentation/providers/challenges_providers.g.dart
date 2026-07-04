// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenges_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(challengesDataSource)
final challengesDataSourceProvider = ChallengesDataSourceProvider._();

final class ChallengesDataSourceProvider extends $FunctionalProvider<
    ChallengesDataSource,
    ChallengesDataSource,
    ChallengesDataSource> with $Provider<ChallengesDataSource> {
  ChallengesDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'challengesDataSourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$challengesDataSourceHash();

  @$internal
  @override
  $ProviderElement<ChallengesDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ChallengesDataSource create(Ref ref) {
    return challengesDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChallengesDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChallengesDataSource>(value),
    );
  }
}

String _$challengesDataSourceHash() =>
    r'a2a7821cc37380aafbfef88771b1ed20f55ad040';

@ProviderFor(ChallengesNotifier)
final challengesProvider = ChallengesNotifierProvider._();

final class ChallengesNotifierProvider
    extends $AsyncNotifierProvider<ChallengesNotifier, UserGameStats> {
  ChallengesNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'challengesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$challengesNotifierHash();

  @$internal
  @override
  ChallengesNotifier create() => ChallengesNotifier();
}

String _$challengesNotifierHash() =>
    r'9bc6b863083021e35aab67408925f2e9a1531ce5';

abstract class _$ChallengesNotifier extends $AsyncNotifier<UserGameStats> {
  FutureOr<UserGameStats> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserGameStats>, UserGameStats>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<UserGameStats>, UserGameStats>,
        AsyncValue<UserGameStats>,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
