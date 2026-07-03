import 'package:dartz/dartz.dart';
import '../entities/ai_report.dart';
import '../../../../core/network/dio_client.dart';

abstract class AiReportRepository {
  /// Trigger AI analysis for recent transactions
  Future<Either<ApiException, AiReport>> analyzeNow();

  /// Get the latest daily report
  Future<Either<ApiException, AiReport>> getDailyReport();

  /// Get report by type
  Future<Either<ApiException, AiReport>> getReport(AiReportType type);

  /// Get list of past reports
  Future<Either<ApiException, List<AiReport>>> getReportHistory({
    int page = 1,
    int limit = 20,
  });

  /// Get current behavior scores
  Future<Either<ApiException, BehaviorScore>> getBehaviorScore();

  /// Get AI predictions (poverty risk, debt probability)
  Future<Either<ApiException, AiPrediction>> getPredictions();

  /// Check remaining AI analyses today (for free plan)
  Future<Either<ApiException, int>> getRemainingAnalyses();
}
