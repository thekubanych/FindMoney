// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardDataSource)
final dashboardDataSourceProvider = DashboardDataSourceProvider._();

final class DashboardDataSourceProvider extends $FunctionalProvider<
    DashboardDataSource,
    DashboardDataSource,
    DashboardDataSource> with $Provider<DashboardDataSource> {
  DashboardDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'dashboardDataSourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dashboardDataSourceHash();

  @$internal
  @override
  $ProviderElement<DashboardDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DashboardDataSource create(Ref ref) {
    return dashboardDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardDataSource>(value),
    );
  }
}

String _$dashboardDataSourceHash() =>
    r'5790cea89649ae7de3d89d3934d3181cee66eeb7';

@ProviderFor(DashboardNotifier)
final dashboardProvider = DashboardNotifierProvider._();

final class DashboardNotifierProvider
    extends $AsyncNotifierProvider<DashboardNotifier, DashboardData> {
  DashboardNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'dashboardProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dashboardNotifierHash();

  @$internal
  @override
  DashboardNotifier create() => DashboardNotifier();
}

String _$dashboardNotifierHash() => r'796826e2a788e503645b7390743b8244a94845c3';

abstract class _$DashboardNotifier extends $AsyncNotifier<DashboardData> {
  FutureOr<DashboardData> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<DashboardData>, DashboardData>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<DashboardData>, DashboardData>,
        AsyncValue<DashboardData>,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
