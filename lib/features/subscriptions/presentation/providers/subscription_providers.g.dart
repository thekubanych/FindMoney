// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(subscriptionDataSource)
final subscriptionDataSourceProvider = SubscriptionDataSourceProvider._();

final class SubscriptionDataSourceProvider extends $FunctionalProvider<
    SubscriptionDataSource,
    SubscriptionDataSource,
    SubscriptionDataSource> with $Provider<SubscriptionDataSource> {
  SubscriptionDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'subscriptionDataSourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$subscriptionDataSourceHash();

  @$internal
  @override
  $ProviderElement<SubscriptionDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SubscriptionDataSource create(Ref ref) {
    return subscriptionDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SubscriptionDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SubscriptionDataSource>(value),
    );
  }
}

String _$subscriptionDataSourceHash() =>
    r'3e89ef9c4c963b0a4745abede482889beba6b111';

@ProviderFor(SubscriptionNotifier)
final subscriptionProvider = SubscriptionNotifierProvider._();

final class SubscriptionNotifierProvider
    extends $AsyncNotifierProvider<SubscriptionNotifier, SubscriptionStatus> {
  SubscriptionNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'subscriptionProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$subscriptionNotifierHash();

  @$internal
  @override
  SubscriptionNotifier create() => SubscriptionNotifier();
}

String _$subscriptionNotifierHash() =>
    r'736b8155de20b97a7dec5fbbb129dfdb34fcd9c8';

abstract class _$SubscriptionNotifier
    extends $AsyncNotifier<SubscriptionStatus> {
  FutureOr<SubscriptionStatus> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<SubscriptionStatus>, SubscriptionStatus>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<SubscriptionStatus>, SubscriptionStatus>,
        AsyncValue<SubscriptionStatus>,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
