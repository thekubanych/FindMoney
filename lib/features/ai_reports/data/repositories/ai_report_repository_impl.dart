import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/ai_report.dart';
import '../../domain/repositories/ai_report_repository.dart';
import '../datasources/ai_remote_datasource.dart';
import '../models/ai_report_model.dart';
import '../../../../core/network/dio_client.dart';

class AiReportRepositoryImpl implements AiReportRepository {
  final AiRemoteDataSource _dataSource;

  const AiReportRepositoryImpl(this._dataSource);

  @override
  Future<Either<ApiException, AiReport>> analyzeNow() async {
    try {
      final model = await _dataSource.analyzeNow();
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, AiReport>> getDailyReport() async {
    try {
      final model = await _dataSource.getDailyReport();
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, AiReport>> getReport(AiReportType type) async {
    try {
      final model = await _dataSource.getReport(type.apiValue);
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, List<AiReport>>> getReportHistory({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final models = await _dataSource.getReportHistory(page, limit);
      return Right(models.map((m) => m.toDomain()).toList());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, BehaviorScore>> getBehaviorScore() async {
    try {
      final model = await _dataSource.getBehaviorScore();
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, AiPrediction>> getPredictions() async {
    try {
      final model = await _dataSource.getPredictions();
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, int>> getRemainingAnalyses() async {
    try {
      final data = await _dataSource.getRemainingAnalyses();
      return Right(data['remaining'] as int);
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }
}
