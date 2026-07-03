import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_report.freezed.dart';

@freezed
class AiReport with _$AiReport {
  const factory AiReport({
    required String id,
    required String userId,
    required AiReportType reportType,
    required String content,
    required int riskScore,
    required int impulsiveScore,
    required int disciplineScore,
    required int emotionalScore,
    required DateTime createdAt,
    List<AiInsight>? insights,
    AiPrediction? prediction,
  }) = _AiReport;
}

@freezed
class AiInsight with _$AiInsight {
  const factory AiInsight({
    required AiInsightType type,
    required String title,
    required String description,
    required InsightSeverity severity,
  }) = _AiInsight;
}

@freezed
class AiPrediction with _$AiPrediction {
  const factory AiPrediction({
    required int monthsUntilDepletion,
    required double debtProbability,
    required double savingsHealthScore,
    required String predictionSummary,
  }) = _AiPrediction;
}

@freezed
class BehaviorScore with _$BehaviorScore {
  const factory BehaviorScore({
    required double impulsiveScore,
    required double disciplineScore,
    required double riskScore,
    required double emotionalDependencyScore,
    required double savingsHealthScore,
    required DateTime calculatedAt,
  }) = _BehaviorScore;
}

enum AiReportType {
  daily,
  weekly,
  monthly,
  hardTruth;

  String get label {
    switch (this) {
      case AiReportType.daily:
        return 'Daily Report';
      case AiReportType.weekly:
        return 'Weekly Analysis';
      case AiReportType.monthly:
        return 'Monthly Diagnosis';
      case AiReportType.hardTruth:
        return 'Hard Truth';
    }
  }

  String get apiValue {
    switch (this) {
      case AiReportType.daily:
        return 'daily';
      case AiReportType.weekly:
        return 'weekly';
      case AiReportType.monthly:
        return 'monthly';
      case AiReportType.hardTruth:
        return 'hard_truth';
    }
  }
}

enum AiInsightType {
  emotionalSpending,
  selfDeception,
  povertyRisk,
  behaviorPattern,
  positiveHabit,
}

enum InsightSeverity {
  info,
  warning,
  danger,
  positive;

  bool get isNegative =>
      this == InsightSeverity.warning || this == InsightSeverity.danger;
}
