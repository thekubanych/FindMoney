// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPrefs)
final sharedPrefsProvider = SharedPrefsProvider._();

final class SharedPrefsProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  SharedPrefsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPrefsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPrefsHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPrefs(ref);
  }
}

String _$sharedPrefsHash() => r'08bda5914d6678c8203b0745a2d802ffb64f1b9e';

@ProviderFor(HardTruthModeNotifier)
final hardTruthModeProvider = HardTruthModeNotifierProvider._();

final class HardTruthModeNotifierProvider
    extends $AsyncNotifierProvider<HardTruthModeNotifier, bool> {
  HardTruthModeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hardTruthModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hardTruthModeNotifierHash();

  @$internal
  @override
  HardTruthModeNotifier create() => HardTruthModeNotifier();
}

String _$hardTruthModeNotifierHash() =>
    r'5e917162be5b90f549d81ccdd11969397edb18a9';

abstract class _$HardTruthModeNotifier extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(BiometricLockNotifier)
final biometricLockProvider = BiometricLockNotifierProvider._();

final class BiometricLockNotifierProvider
    extends $AsyncNotifierProvider<BiometricLockNotifier, bool> {
  BiometricLockNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'biometricLockProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$biometricLockNotifierHash();

  @$internal
  @override
  BiometricLockNotifier create() => BiometricLockNotifier();
}

String _$biometricLockNotifierHash() =>
    r'a89fb80b611d4029eba66527bc7aebc42e93cec1';

abstract class _$BiometricLockNotifier extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(NotificationsEnabledNotifier)
final notificationsEnabledProvider = NotificationsEnabledNotifierProvider._();

final class NotificationsEnabledNotifierProvider
    extends $AsyncNotifierProvider<NotificationsEnabledNotifier, bool> {
  NotificationsEnabledNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsEnabledProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsEnabledNotifierHash();

  @$internal
  @override
  NotificationsEnabledNotifier create() => NotificationsEnabledNotifier();
}

String _$notificationsEnabledNotifierHash() =>
    r'6ed2a86e5ba9a71fc39c9e3d652b6653cfbfa83f';

abstract class _$NotificationsEnabledNotifier extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(AiPersonalityNotifier)
final aiPersonalityProvider = AiPersonalityNotifierProvider._();

final class AiPersonalityNotifierProvider
    extends $AsyncNotifierProvider<AiPersonalityNotifier, AiPersonality> {
  AiPersonalityNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiPersonalityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiPersonalityNotifierHash();

  @$internal
  @override
  AiPersonalityNotifier create() => AiPersonalityNotifier();
}

String _$aiPersonalityNotifierHash() =>
    r'93181dc3c329e6ee9488f88d3be9f4b97a5e0558';

abstract class _$AiPersonalityNotifier extends $AsyncNotifier<AiPersonality> {
  FutureOr<AiPersonality> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AiPersonality>, AiPersonality>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AiPersonality>, AiPersonality>,
              AsyncValue<AiPersonality>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
