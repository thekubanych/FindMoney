import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/analytics_model.dart';

part 'analytics_datasource.g.dart';

@RestApi()
abstract class AnalyticsDataSource {
  factory AnalyticsDataSource(Dio dio, {String baseUrl}) =
      _AnalyticsDataSource;

  @GET('/analytics/heatmap')
  Future<List<HeatmapDayModel>> getHeatmap(@Query('days') int days);

  @GET('/analytics/categories')
  Future<List<CategoryBreakdownModel>> getCategories();

  @GET('/analytics/emotional')
  Future<List<EmotionSpendingModel>> getEmotionalSpending();

  @GET('/analytics/risk-timeline')
  Future<RiskTimelineModel> getRiskTimeline();

  @GET('/analytics/comparison')
  Future<PeerComparisonModel> getComparison();

  @GET('/analytics/scores')
  Future<AnalyticsScoresModel> getScores();

  @GET('/analytics/overview')
  Future<AnalyticsModel> getOverview();
}
