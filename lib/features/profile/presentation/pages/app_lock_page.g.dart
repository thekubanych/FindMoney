// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_lock_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppLockNotifier)
final appLockProvider = AppLockNotifierProvider._();

final class AppLockNotifierProvider
    extends $NotifierProvider<AppLockNotifier, bool> {
  AppLockNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'appLockProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$appLockNotifierHash();

  @$internal
  @override
  AppLockNotifier create() => AppLockNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$appLockNotifierHash() => r'9b4871b080f3630353840fd9cd4d9401c6af4ba0';

abstract class _$AppLockNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<bool, bool>, bool, Object?, Object?>;
    return element.handleCreate(ref, build);
  }
}
