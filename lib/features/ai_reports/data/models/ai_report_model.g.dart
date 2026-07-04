// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiReportModel _$AiReportModelFromJson(Map<String, dynamic> json) =>
    _AiReportModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      reportType: json['report_type'] as String,
      content: json['content'] as String,
      riskScore: (json['risk_score'] as num).toInt(),
      impulsiveScore: (json['impulsive_score'] as num).toInt(),
      disciplineScore: (json['discipline_score'] as num).toInt(),
      emotionalScore: (json['emotional_score'] as num).toInt(),
      createdAt: json['created_at'] as String,
      insights: (json['insights'] as List<dynamic>?)
          ?.map((e) => AiInsightModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      prediction: json['prediction'] == null
          ? null
          : AiPredictionModel.fromJson(
              json['prediction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiReportModelToJson(_AiReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'report_type': instance.reportType,
      'content': instance.content,
      'risk_score': instance.riskScore,
      'impulsive_score': instance.impulsiveScore,
      'discipline_score': instance.disciplineScore,
      'emotional_score': instance.emotionalScore,
      'created_at': instance.createdAt,
      'insights': instance.insights,
      'prediction': instance.prediction,
    };

_AiInsightModel _$AiInsightModelFromJson(Map<String, dynamic> json) =>
    _AiInsightModel(
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      severity: json['severity'] as String,
    );

Map<String, dynamic> _$AiInsightModelToJson(_AiInsightModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'severity': instance.severity,
    };

_AiPredictionModel _$AiPredictionModelFromJson(Map<String, dynamic> json) =>
    _AiPredictionModel(
      monthsUntilDepletion: (json['months_until_depletion'] as num).toInt(),
      debtProbability: (json['debt_probability'] as num).toDouble(),
      savingsHealthScore: (json['savings_health_score'] as num).toDouble(),
      predictionSummary: json['prediction_summary'] as String,
    );

Map<String, dynamic> _$AiPredictionModelToJson(_AiPredictionModel instance) =>
    <String, dynamic>{
      'months_until_depletion': instance.monthsUntilDepletion,
      'debt_probability': instance.debtProbability,
      'savings_health_score': instance.savingsHealthScore,
      'prediction_summary': instance.predictionSummary,
    };

_BehaviorScoreModel _$BehaviorScoreModelFromJson(Map<String, dynamic> json) =>
    _BehaviorScoreModel(
      impulsiveScore: (json['impulsive_score'] as num).toDouble(),
      disciplineScore: (json['discipline_score'] as num).toDouble(),
      riskScore: (json['risk_score'] as num).toDouble(),
      emotionalDependencyScore:
          (json['emotional_dependency_score'] as num).toDouble(),
      savingsHealthScore: (json['savings_health_score'] as num).toDouble(),
      calculatedAt: json['calculated_at'] as String,
    );

Map<String, dynamic> _$BehaviorScoreModelToJson(_BehaviorScoreModel instance) =>
    <String, dynamic>{
      'impulsive_score': instance.impulsiveScore,
      'discipline_score': instance.disciplineScore,
      'risk_score': instance.riskScore,
      'emotional_dependency_score': instance.emotionalDependencyScore,
      'savings_health_score': instance.savingsHealthScore,
      'calculated_at': instance.calculatedAt,
    };
