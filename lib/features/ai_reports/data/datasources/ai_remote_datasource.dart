import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/ai_report_model.dart';

part 'ai_remote_datasource.g.dart';

@RestApi()
abstract class AiRemoteDataSource {
  factory AiRemoteDataSource(Dio dio, {String baseUrl}) =
      _AiRemoteDataSource;

  @POST('/ai/analyze')
  Future<AiReportModel> analyzeNow();

  @GET('/ai/daily-report')
  Future<AiReportModel> getDailyReport();

  @GET('/ai/report/{type}')
  Future<AiReportModel> getReport(@Path('type') String type);

  @GET('/ai/reports')
  Future<List<AiReportModel>> getReportHistory(
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @GET('/ai/risk-score')
  Future<BehaviorScoreModel> getBehaviorScore();

  @GET('/ai/predictions')
  Future<AiPredictionModel> getPredictions();

  @GET('/ai/remaining-analyses')
  Future<Map<String, dynamic>> getRemainingAnalyses();
}
