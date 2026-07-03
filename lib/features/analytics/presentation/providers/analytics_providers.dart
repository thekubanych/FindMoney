import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../../data/datasources/analytics_datasource.dart';
import '../../domain/entities/analytics_data.dart';
import '../../../../core/network/dio_client.dart';

part 'analytics_providers.g.dart';

@riverpod
AnalyticsDataSource analyticsDataSource(Ref ref) =>
    AnalyticsDataSource(ref.watch(dioClientProvider));

@riverpod
class AnalyticsNotifier extends _$AnalyticsNotifier {
  @override
  Future<AnalyticsData> build() => _fetch();

  Future<AnalyticsData> _fetch() async {
    final ds = ref.read(analyticsDataSourceProvider);
    try {
      final model = await ds.getOverview();
      return model.toDomain();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }
}

@riverpod
class HeatmapRangeNotifier extends _$HeatmapRangeNotifier {
  @override
  int build() => 90; // last 90 days

  void setRange(int days) => state = days;
}
