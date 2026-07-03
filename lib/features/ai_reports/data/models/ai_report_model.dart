import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/ai_report.dart';

part 'ai_report_model.freezed.dart';
part 'ai_report_model.g.dart';

@freezed
class AiReportModel with _$AiReportModel {
  const factory AiReportModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'report_type') required String reportType,
    required String content,
    @JsonKey(name: 'risk_score') required int riskScore,
    @JsonKey(name: 'impulsive_score') required int impulsiveScore,
    @JsonKey(name: 'discipline_score') required int disciplineScore,
    @JsonKey(name: 'emotional_score') required int emotionalScore,
    @JsonKey(name: 'created_at') required String createdAt,
    List<AiInsightModel>? insights,
    AiPredictionModel? prediction,
  }) = _AiReportModel;

  factory AiReportModel.fromJson(Map<String, dynamic> json) =>
      _$AiReportModelFromJson(json);
}

@freezed
class AiInsightModel with _$AiInsightModel {
  const factory AiInsightModel({
    required String type,
    required String title,
    required String description,
    required String severity,
  }) = _AiInsightModel;

  factory AiInsightModel.fromJson(Map<String, dynamic> json) =>
      _$AiInsightModelFromJson(json);
}

@freezed
class AiPredictionModel with _$AiPredictionModel {
  const factory AiPredictionModel({
    @JsonKey(name: 'months_until_depletion') required int monthsUntilDepletion,
    @JsonKey(name: 'debt_probability') required double debtProbability,
    @JsonKey(name: 'savings_health_score') required double savingsHealthScore,
    @JsonKey(name: 'prediction_summary') required String predictionSummary,
  }) = _AiPredictionModel;

  factory AiPredictionModel.fromJson(Map<String, dynamic> json) =>
      _$AiPredictionModelFromJson(json);
}

@freezed
class BehaviorScoreModel with _$BehaviorScoreModel {
  const factory BehaviorScoreModel({
    @JsonKey(name: 'impulsive_score') required double impulsiveScore,
    @JsonKey(name: 'discipline_score') required double disciplineScore,
    @JsonKey(name: 'risk_score') required double riskScore,
    @JsonKey(name: 'emotional_dependency_score')
    required double emotionalDependencyScore,
    @JsonKey(name: 'savings_health_score') required double savingsHealthScore,
    @JsonKey(name: 'calculated_at') required String calculatedAt,
  }) = _BehaviorScoreModel;

  factory BehaviorScoreModel.fromJson(Map<String, dynamic> json) =>
      _$BehaviorScoreModelFromJson(json);
}

// ─── Mappers ─────────────────────────────────────────────────────────────────

extension AiReportModelMapper on AiReportModel {
  AiReport toDomain() => AiReport(
        id: id,
        userId: userId,
        reportType: _parseReportType(reportType),
        content: content,
        riskScore: riskScore,
        impulsiveScore: impulsiveScore,
        disciplineScore: disciplineScore,
        emotionalScore: emotionalScore,
        createdAt: DateTime.parse(createdAt),
        insights: insights?.map((i) => i.toDomain()).toList(),
        prediction: prediction?.toDomain(),
      );

  AiReportType _parseReportType(String type) {
    switch (type) {
      case 'daily':
        return AiReportType.daily;
      case 'weekly':
        return AiReportType.weekly;
      case 'monthly':
        return AiReportType.monthly;
      case 'hard_truth':
        return AiReportType.hardTruth;
      default:
        return AiReportType.daily;
    }
  }
}

extension AiInsightModelMapper on AiInsightModel {
  AiInsight toDomain() => AiInsight(
        type: _parseInsightType(type),
        title: title,
        description: description,
        severity: _parseSeverity(severity),
      );

  AiInsightType _parseInsightType(String t) {
    switch (t) {
      case 'emotional_spending':
        return AiInsightType.emotionalSpending;
      case 'self_deception':
        return AiInsightType.selfDeception;
      case 'poverty_risk':
        return AiInsightType.povertyRisk;
      case 'behavior_pattern':
        return AiInsightType.behaviorPattern;
      default:
        return AiInsightType.positiveHabit;
    }
  }

  InsightSeverity _parseSeverity(String s) {
    switch (s) {
      case 'warning':
        return InsightSeverity.warning;
      case 'danger':
        return InsightSeverity.danger;
      case 'positive':
        return InsightSeverity.positive;
      default:
        return InsightSeverity.info;
    }
  }
}

extension AiPredictionModelMapper on AiPredictionModel {
  AiPrediction toDomain() => AiPrediction(
        monthsUntilDepletion: monthsUntilDepletion,
        debtProbability: debtProbability,
        savingsHealthScore: savingsHealthScore,
        predictionSummary: predictionSummary,
      );
}

extension BehaviorScoreModelMapper on BehaviorScoreModel {
  BehaviorScore toDomain() => BehaviorScore(
        impulsiveScore: impulsiveScore,
        disciplineScore: disciplineScore,
        riskScore: riskScore,
        emotionalDependencyScore: emotionalDependencyScore,
        savingsHealthScore: savingsHealthScore,
        calculatedAt: DateTime.parse(calculatedAt),
      );
}
