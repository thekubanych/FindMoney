// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalyticsModel _$AnalyticsModelFromJson(Map<String, dynamic> json) =>
    _AnalyticsModel(
      heatmap: (json['heatmap'] as List<dynamic>)
          .map((e) => HeatmapDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryBreakdown: (json['category_breakdown'] as List<dynamic>)
          .map(
              (e) => CategoryBreakdownModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      emotionalSpending: (json['emotional_spending'] as List<dynamic>)
          .map((e) => EmotionSpendingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      riskTimeline: RiskTimelineModel.fromJson(
          json['risk_timeline'] as Map<String, dynamic>),
      comparison: PeerComparisonModel.fromJson(
          json['comparison'] as Map<String, dynamic>),
      scores:
          AnalyticsScoresModel.fromJson(json['scores'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalyticsModelToJson(_AnalyticsModel instance) =>
    <String, dynamic>{
      'heatmap': instance.heatmap,
      'category_breakdown': instance.categoryBreakdown,
      'emotional_spending': instance.emotionalSpending,
      'risk_timeline': instance.riskTimeline,
      'comparison': instance.comparison,
      'scores': instance.scores,
    };

_HeatmapDayModel _$HeatmapDayModelFromJson(Map<String, dynamic> json) =>
    _HeatmapDayModel(
      date: json['date'] as String,
      amount: (json['amount'] as num).toDouble(),
      intensity: (json['intensity'] as num).toInt(),
    );

Map<String, dynamic> _$HeatmapDayModelToJson(_HeatmapDayModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'amount': instance.amount,
      'intensity': instance.intensity,
    };

_CategoryBreakdownModel _$CategoryBreakdownModelFromJson(
        Map<String, dynamic> json) =>
    _CategoryBreakdownModel(
      category: json['category'] as String,
      amount: (json['amount'] as num).toDouble(),
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$CategoryBreakdownModelToJson(
        _CategoryBreakdownModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'amount': instance.amount,
      'percentage': instance.percentage,
    };

_EmotionSpendingModel _$EmotionSpendingModelFromJson(
        Map<String, dynamic> json) =>
    _EmotionSpendingModel(
      emotion: json['emotion'] as String,
      totalAmount: (json['total_amount'] as num).toDouble(),
      transactionCount: (json['transaction_count'] as num).toInt(),
    );

Map<String, dynamic> _$EmotionSpendingModelToJson(
        _EmotionSpendingModel instance) =>
    <String, dynamic>{
      'emotion': instance.emotion,
      'total_amount': instance.totalAmount,
      'transaction_count': instance.transactionCount,
    };

_RiskTimelineModel _$RiskTimelineModelFromJson(Map<String, dynamic> json) =>
    _RiskTimelineModel(
      points: (json['points'] as List<dynamic>)
          .map((e) => RiskPointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trend: json['trend'] as String,
    );

Map<String, dynamic> _$RiskTimelineModelToJson(_RiskTimelineModel instance) =>
    <String, dynamic>{
      'points': instance.points,
      'trend': instance.trend,
    };

_RiskPointModel _$RiskPointModelFromJson(Map<String, dynamic> json) =>
    _RiskPointModel(
      date: json['date'] as String,
      riskScore: (json['risk_score'] as num).toInt(),
    );

Map<String, dynamic> _$RiskPointModelToJson(_RiskPointModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'risk_score': instance.riskScore,
    };

_PeerComparisonModel _$PeerComparisonModelFromJson(Map<String, dynamic> json) =>
    _PeerComparisonModel(
      ageGroup: json['age_group'] as String,
      yourSavingsRate: (json['your_savings_rate'] as num).toDouble(),
      peerAvgSavingsRate: (json['peer_avg_savings_rate'] as num).toDouble(),
      yourImpulsiveSpending:
          (json['your_impulsive_spending'] as num).toDouble(),
      peerAvgImpulsiveSpending:
          (json['peer_avg_impulsive_spending'] as num).toDouble(),
      percentileRank: (json['percentile_rank'] as num).toInt(),
    );

Map<String, dynamic> _$PeerComparisonModelToJson(
        _PeerComparisonModel instance) =>
    <String, dynamic>{
      'age_group': instance.ageGroup,
      'your_savings_rate': instance.yourSavingsRate,
      'peer_avg_savings_rate': instance.peerAvgSavingsRate,
      'your_impulsive_spending': instance.yourImpulsiveSpending,
      'peer_avg_impulsive_spending': instance.peerAvgImpulsiveSpending,
      'percentile_rank': instance.percentileRank,
    };

_AnalyticsScoresModel _$AnalyticsScoresModelFromJson(
        Map<String, dynamic> json) =>
    _AnalyticsScoresModel(
      impulsiveScore: (json['impulsive_score'] as num).toDouble(),
      disciplineScore: (json['discipline_score'] as num).toDouble(),
      riskScore: (json['risk_score'] as num).toDouble(),
      emotionalDependencyScore:
          (json['emotional_dependency_score'] as num).toDouble(),
      savingsHealthScore: (json['savings_health_score'] as num).toDouble(),
    );

Map<String, dynamic> _$AnalyticsScoresModelToJson(
        _AnalyticsScoresModel instance) =>
    <String, dynamic>{
      'impulsive_score': instance.impulsiveScore,
      'discipline_score': instance.disciplineScore,
      'risk_score': instance.riskScore,
      'emotional_dependency_score': instance.emotionalDependencyScore,
      'savings_health_score': instance.savingsHealthScore,
    };
