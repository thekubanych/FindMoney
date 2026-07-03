import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/ai_remote_datasource.dart';
import '../../data/repositories/ai_report_repository_impl.dart';
import '../../domain/entities/ai_report.dart';
import '../../domain/repositories/ai_report_repository.dart';
import '../../domain/usecases/ai_report_usecases.dart';
import '../../../../core/network/dio_client.dart';

part 'ai_report_providers.g.dart';

// ─── Infrastructure providers ─────────────────────────────────────────────────

@riverpod
AiRemoteDataSource aiRemoteDataSource(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return AiRemoteDataSource(dio);
}

@riverpod
AiReportRepository aiReportRepository(Ref ref) {
  final dataSource = ref.watch(aiRemoteDataSourceProvider);
  return AiReportRepositoryImpl(dataSource);
}

// ─── Use case providers ───────────────────────────────────────────────────────

@riverpod
GetDailyReportUseCase getDailyReportUseCase(Ref ref) {
  return GetDailyReportUseCase(ref.watch(aiReportRepositoryProvider));
}

@riverpod
AnalyzeNowUseCase analyzeNowUseCase(Ref ref) {
  return AnalyzeNowUseCase(ref.watch(aiReportRepositoryProvider));
}

@riverpod
GetBehaviorScoreUseCase getBehaviorScoreUseCase(Ref ref) {
  return GetBehaviorScoreUseCase(ref.watch(aiReportRepositoryProvider));
}

@riverpod
GetPredictionsUseCase getPredictionsUseCase(Ref ref) {
  return GetPredictionsUseCase(ref.watch(aiReportRepositoryProvider));
}

@riverpod
GetReportHistoryUseCase getReportHistoryUseCase(Ref ref) {
  return GetReportHistoryUseCase(ref.watch(aiReportRepositoryProvider));
}

// ─── State notifiers ──────────────────────────────────────────────────────────

@riverpod
class DailyReportNotifier extends _$DailyReportNotifier {
  @override
  Future<AiReport> build() async {
    final useCase = ref.watch(getDailyReportUseCaseProvider);
    final result = await useCase();
    return result.fold(
      (error) => throw error,
      (report) => report,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    final useCase = ref.read(getDailyReportUseCaseProvider);
    final result = await useCase();
    state = result.fold(
      (error) => AsyncError(error, StackTrace.current),
      (report) => AsyncData(report),
    );
  }
}

@riverpod
class AnalyzeNotifier extends _$AnalyzeNotifier {
  @override
  AsyncValue<AiReport?> build() => const AsyncData(null);

  Future<void> analyze() async {
    state = const AsyncLoading();
    final useCase = ref.read(analyzeNowUseCaseProvider);
    final result = await useCase();
    state = result.fold(
      (error) => AsyncError(error, StackTrace.current),
      (report) => AsyncData(report),
    );

    // Refresh daily report after new analysis
    if (state is AsyncData) {
      ref.invalidate(dailyReportNotifierProvider);
      ref.invalidate(behaviorScoreNotifierProvider);
    }
  }
}

@riverpod
class BehaviorScoreNotifier extends _$BehaviorScoreNotifier {
  @override
  Future<BehaviorScore> build() async {
    final useCase = ref.watch(getBehaviorScoreUseCaseProvider);
    final result = await useCase();
    return result.fold(
      (error) => throw error,
      (score) => score,
    );
  }
}

@riverpod
class PredictionsNotifier extends _$PredictionsNotifier {
  @override
  Future<AiPrediction> build() async {
    final useCase = ref.watch(getPredictionsUseCaseProvider);
    final result = await useCase();
    return result.fold(
      (error) => throw error,
      (prediction) => prediction,
    );
  }
}

@riverpod
class ReportTypeNotifier extends _$ReportTypeNotifier {
  @override
  AiReportType build() => AiReportType.daily;

  void select(AiReportType type) => state = type;
}

@riverpod
Future<AiReport> selectedReport(Ref ref) async {
  final type = ref.watch(reportTypeNotifierProvider);
  final repository = ref.watch(aiReportRepositoryProvider);
  final result = await repository.getReport(type);
  return result.fold(
    (error) => throw error,
    (report) => report,
  );
}
