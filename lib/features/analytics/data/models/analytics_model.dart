import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/analytics_data.dart';

part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

@freezed
class AnalyticsModel with _$AnalyticsModel {
  const factory AnalyticsModel({
    required List<HeatmapDayModel> heatmap,
    @JsonKey(name: 'category_breakdown')
    required List<CategoryBreakdownModel> categoryBreakdown,
    @JsonKey(name: 'emotional_spending')
    required List<EmotionSpendingModel> emotionalSpending,
    @JsonKey(name: 'risk_timeline') required RiskTimelineModel riskTimeline,
    required PeerComparisonModel comparison,
    required AnalyticsScoresModel scores,
  }) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsModelFromJson(json);
}

@freezed
class HeatmapDayModel with _$HeatmapDayModel {
  const factory HeatmapDayModel({
    required String date,
    required double amount,
    required int intensity,
  }) = _HeatmapDayModel;

  factory HeatmapDayModel.fromJson(Map<String, dynamic> json) =>
      _$HeatmapDayModelFromJson(json);
}

@freezed
class CategoryBreakdownModel with _$CategoryBreakdownModel {
  const factory CategoryBreakdownModel({
    required String category,
    required double amount,
    required double percentage,
  }) = _CategoryBreakdownModel;

  factory CategoryBreakdownModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryBreakdownModelFromJson(json);
}

@freezed
class EmotionSpendingModel with _$EmotionSpendingModel {
  const factory EmotionSpendingModel({
    required String emotion,
    @JsonKey(name: 'total_amount') required double totalAmount,
    @JsonKey(name: 'transaction_count') required int transactionCount,
  }) = _EmotionSpendingModel;

  factory EmotionSpendingModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionSpendingModelFromJson(json);
}

@freezed
class RiskTimelineModel with _$RiskTimelineModel {
  const factory RiskTimelineModel({
    required List<RiskPointModel> points,
    required String trend,
  }) = _RiskTimelineModel;

  factory RiskTimelineModel.fromJson(Map<String, dynamic> json) =>
      _$RiskTimelineModelFromJson(json);
}

@freezed
class RiskPointModel with _$RiskPointModel {
  const factory RiskPointModel({
    required String date,
    @JsonKey(name: 'risk_score') required int riskScore,
  }) = _RiskPointModel;

  factory RiskPointModel.fromJson(Map<String, dynamic> json) =>
      _$RiskPointModelFromJson(json);
}

@freezed
class PeerComparisonModel with _$PeerComparisonModel {
  const factory PeerComparisonModel({
    @JsonKey(name: 'age_group') required String ageGroup,
    @JsonKey(name: 'your_savings_rate') required double yourSavingsRate,
    @JsonKey(name: 'peer_avg_savings_rate')
    required double peerAvgSavingsRate,
    @JsonKey(name: 'your_impulsive_spending')
    required double yourImpulsiveSpending,
    @JsonKey(name: 'peer_avg_impulsive_spending')
    required double peerAvgImpulsiveSpending,
    @JsonKey(name: 'percentile_rank') required int percentileRank,
  }) = _PeerComparisonModel;

  factory PeerComparisonModel.fromJson(Map<String, dynamic> json) =>
      _$PeerComparisonModelFromJson(json);
}

@freezed
class AnalyticsScoresModel with _$AnalyticsScoresModel {
  const factory AnalyticsScoresModel({
    @JsonKey(name: 'impulsive_score') required double impulsiveScore,
    @JsonKey(name: 'discipline_score') required double disciplineScore,
    @JsonKey(name: 'risk_score') required double riskScore,
    @JsonKey(name: 'emotional_dependency_score')
    required double emotionalDependencyScore,
    @JsonKey(name: 'savings_health_score') required double savingsHealthScore,
  }) = _AnalyticsScoresModel;

  factory AnalyticsScoresModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsScoresModelFromJson(json);
}

// ─── Mappers ──────────────────────────────────────────────────────────────────

extension AnalyticsModelMapper on AnalyticsModel {
  AnalyticsData toDomain() => AnalyticsData(
        heatmap: heatmap
            .map((h) => HeatmapDay(
                  date: DateTime.parse(h.date),
                  amount: h.amount,
                  intensity: h.intensity,
                ))
            .toList(),
        categoryBreakdown: categoryBreakdown
            .map((c) => CategoryBreakdown(
                  category: c.category,
                  amount: c.amount,
                  percentage: c.percentage,
                ))
            .toList(),
        emotionalSpending: emotionalSpending
            .map((e) => EmotionSpending(
                  emotion: e.emotion,
                  totalAmount: e.totalAmount,
                  transactionCount: e.transactionCount,
                ))
            .toList(),
        riskTimeline: RiskTimeline(
          points: riskTimeline.points
              .map((p) => RiskPoint(
                    date: DateTime.parse(p.date),
                    riskScore: p.riskScore,
                  ))
              .toList(),
          trend: riskTimeline.trend,
        ),
        comparison: PeerComparison(
          ageGroup: comparison.ageGroup,
          yourSavingsRate: comparison.yourSavingsRate,
          peerAvgSavingsRate: comparison.peerAvgSavingsRate,
          yourImpulsiveSpending: comparison.yourImpulsiveSpending,
          peerAvgImpulsiveSpending: comparison.peerAvgImpulsiveSpending,
          percentileRank: comparison.percentileRank,
        ),
        scores: AnalyticsScores(
          impulsiveScore: scores.impulsiveScore,
          disciplineScore: scores.disciplineScore,
          riskScore: scores.riskScore,
          emotionalDependencyScore: scores.emotionalDependencyScore,
          savingsHealthScore: scores.savingsHealthScore,
        ),
      );
}
