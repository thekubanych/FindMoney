// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(analyticsDataSource)
final analyticsDataSourceProvider = AnalyticsDataSourceProvider._();

final class AnalyticsDataSourceProvider
    extends
        $FunctionalProvider<
          AnalyticsDataSource,
          AnalyticsDataSource,
          AnalyticsDataSource
        >
    with $Provider<AnalyticsDataSource> {
  AnalyticsDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyticsDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyticsDataSourceHash();

  @$internal
  @override
  $ProviderElement<AnalyticsDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnalyticsDataSource create(Ref ref) {
    return analyticsDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnalyticsDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnalyticsDataSource>(value),
    );
  }
}

String _$analyticsDataSourceHash() =>
    r'1ef7d8d461292268b1f65216aceac4873ca42005';

@ProviderFor(AnalyticsNotifier)
final analyticsProvider = AnalyticsNotifierProvider._();

final class AnalyticsNotifierProvider
    extends $AsyncNotifierProvider<AnalyticsNotifier, AnalyticsData> {
  AnalyticsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyticsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyticsNotifierHash();

  @$internal
  @override
  AnalyticsNotifier create() => AnalyticsNotifier();
}

String _$analyticsNotifierHash() => r'20bbcc354f7cb5a95c092de4f1a4d12e2a30d028';

abstract class _$AnalyticsNotifier extends $AsyncNotifier<AnalyticsData> {
  FutureOr<AnalyticsData> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AnalyticsData>, AnalyticsData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AnalyticsData>, AnalyticsData>,
              AsyncValue<AnalyticsData>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(HeatmapRangeNotifier)
final heatmapRangeProvider = HeatmapRangeNotifierProvider._();

final class HeatmapRangeNotifierProvider
    extends $NotifierProvider<HeatmapRangeNotifier, int> {
  HeatmapRangeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'heatmapRangeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$heatmapRangeNotifierHash();

  @$internal
  @override
  HeatmapRangeNotifier create() => HeatmapRangeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$heatmapRangeNotifierHash() =>
    r'8d236292b92e3d92a36eddaf6bfdbbb69c91c969';

abstract class _$HeatmapRangeNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
