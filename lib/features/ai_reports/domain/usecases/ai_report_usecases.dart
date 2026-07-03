import 'package:dartz/dartz.dart';
import '../entities/ai_report.dart';
import '../repositories/ai_report_repository.dart';
import '../../../../core/network/dio_client.dart';

class GetDailyReportUseCase {
  final AiReportRepository _repository;
  const GetDailyReportUseCase(this._repository);

  Future<Either<ApiException, AiReport>> call() {
    return _repository.getDailyReport();
  }
}

class GetReportUseCase {
  final AiReportRepository _repository;
  const GetReportUseCase(this._repository);

  Future<Either<ApiException, AiReport>> call(AiReportType type) {
    return _repository.getReport(type);
  }
}

class AnalyzeNowUseCase {
  final AiReportRepository _repository;
  const AnalyzeNowUseCase(this._repository);

  Future<Either<ApiException, AiReport>> call() {
    return _repository.analyzeNow();
  }
}

class GetBehaviorScoreUseCase {
  final AiReportRepository _repository;
  const GetBehaviorScoreUseCase(this._repository);

  Future<Either<ApiException, BehaviorScore>> call() {
    return _repository.getBehaviorScore();
  }
}

class GetPredictionsUseCase {
  final AiReportRepository _repository;
  const GetPredictionsUseCase(this._repository);

  Future<Either<ApiException, AiPrediction>> call() {
    return _repository.getPredictions();
  }
}

class GetReportHistoryUseCase {
  final AiReportRepository _repository;
  const GetReportHistoryUseCase(this._repository);

  Future<Either<ApiException, List<AiReport>>> call({
    int page = 1,
    int limit = 20,
  }) {
    return _repository.getReportHistory(page: page, limit: limit);
  }
}
