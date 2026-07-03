import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_data.freezed.dart';

@freezed
class AnalyticsData with _$AnalyticsData {
  const factory AnalyticsData({
    required List<HeatmapDay> heatmap,
    required List<CategoryBreakdown> categoryBreakdown,
    required List<EmotionSpending> emotionalSpending,
    required RiskTimeline riskTimeline,
    required PeerComparison comparison,
    required AnalyticsScores scores,
  }) = _AnalyticsData;
}

@freezed
class HeatmapDay with _$HeatmapDay {
  const factory HeatmapDay({
    required DateTime date,
    required double amount,
    required int intensity, // 0-4
  }) = _HeatmapDay;
}

@freezed
class CategoryBreakdown with _$CategoryBreakdown {
  const factory CategoryBreakdown({
    required String category,
    required double amount,
    required double percentage,
  }) = _CategoryBreakdown;
}

@freezed
class EmotionSpending with _$EmotionSpending {
  const factory EmotionSpending({
    required String emotion,
    required double totalAmount,
    required int transactionCount,
  }) = _EmotionSpending;
}

@freezed
class RiskTimeline with _$RiskTimeline {
  const factory RiskTimeline({
    required List<RiskPoint> points,
    required String trend, // improving, worsening, stable
  }) = _RiskTimeline;
}

@freezed
class RiskPoint with _$RiskPoint {
  const factory RiskPoint({
    required DateTime date,
    required int riskScore,
  }) = _RiskPoint;
}

@freezed
class PeerComparison with _$PeerComparison {
  const factory PeerComparison({
    required String ageGroup,
    required double yourSavingsRate,
    required double peerAvgSavingsRate,
    required double yourImpulsiveSpending,
    required double peerAvgImpulsiveSpending,
    required int percentileRank, // top X%
  }) = _PeerComparison;
}

@freezed
class AnalyticsScores with _$AnalyticsScores {
  const factory AnalyticsScores({
    required double impulsiveScore,
    required double disciplineScore,
    required double riskScore,
    required double emotionalDependencyScore,
    required double savingsHealthScore,
  }) = _AnalyticsScores;
}
