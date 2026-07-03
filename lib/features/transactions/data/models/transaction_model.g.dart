// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      category: json['category'] as String,
      subcategory: json['subcategory'] as String?,
      description: json['description'] as String?,
      emotionBefore: json['emotion_before'] as String?,
      emotionAfter: json['emotion_after'] as String?,
      createdAt: json['created_at'] as String,
      isImpulsive: json['is_impulsive'] as bool?,
      aiTags: (json['ai_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'amount': instance.amount,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'description': instance.description,
      'emotion_before': instance.emotionBefore,
      'emotion_after': instance.emotionAfter,
      'created_at': instance.createdAt,
      'is_impulsive': instance.isImpulsive,
      'ai_tags': instance.aiTags,
    };

_CreateTransactionDto _$CreateTransactionDtoFromJson(
  Map<String, dynamic> json,
) => _CreateTransactionDto(
  amount: (json['amount'] as num).toDouble(),
  category: json['category'] as String,
  subcategory: json['subcategory'] as String?,
  description: json['description'] as String?,
  emotionBefore: json['emotion_before'] as String?,
  emotionAfter: json['emotion_after'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$CreateTransactionDtoToJson(
  _CreateTransactionDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'category': instance.category,
  'subcategory': instance.subcategory,
  'description': instance.description,
  'emotion_before': instance.emotionBefore,
  'emotion_after': instance.emotionAfter,
  'created_at': instance.createdAt,
};

_TransactionStatsModel _$TransactionStatsModelFromJson(
  Map<String, dynamic> json,
) => _TransactionStatsModel(
  totalIncome: (json['total_income'] as num).toDouble(),
  totalExpenses: (json['total_expenses'] as num).toDouble(),
  savingsRate: (json['savings_rate'] as num).toDouble(),
  impulsiveSpendingTotal: (json['impulsive_spending_total'] as num).toDouble(),
  byCategory: (json['by_category'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  byEmotion: (json['by_emotion'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
);

Map<String, dynamic> _$TransactionStatsModelToJson(
  _TransactionStatsModel instance,
) => <String, dynamic>{
  'total_income': instance.totalIncome,
  'total_expenses': instance.totalExpenses,
  'savings_rate': instance.savingsRate,
  'impulsive_spending_total': instance.impulsiveSpendingTotal,
  'by_category': instance.byCategory,
  'by_emotion': instance.byEmotion,
};
