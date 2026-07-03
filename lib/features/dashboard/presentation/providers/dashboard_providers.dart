import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../../data/datasources/dashboard_datasource.dart';
import '../../domain/entities/dashboard_data.dart';
import '../../../../core/network/dio_client.dart';

part 'dashboard_providers.g.dart';

@riverpod
DashboardDataSource dashboardDataSource(Ref ref) =>
    DashboardDataSource(ref.watch(dioClientProvider));

@riverpod
class DashboardNotifier extends _$DashboardNotifier {
  @override
  Future<DashboardData> build() => _fetch();

  Future<DashboardData> _fetch() async {
    final ds = ref.read(dashboardDataSourceProvider);
    try {
      final model = await ds.getDashboard();
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
