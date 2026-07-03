import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/transaction.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required double amount,
    required String category,
    String? subcategory,
    String? description,
    @JsonKey(name: 'emotion_before') required String? emotionBefore,
    @JsonKey(name: 'emotion_after') required String? emotionAfter,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'is_impulsive') bool? isImpulsive,
    @JsonKey(name: 'ai_tags') List<String>? aiTags,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

@freezed
class CreateTransactionDto with _$CreateTransactionDto {
  const factory CreateTransactionDto({
    required double amount,
    required String category,
    String? subcategory,
    String? description,
    @JsonKey(name: 'emotion_before') String? emotionBefore,
    @JsonKey(name: 'emotion_after') String? emotionAfter,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _CreateTransactionDto;

  factory CreateTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTransactionDtoFromJson(json);
}

@freezed
class TransactionStatsModel with _$TransactionStatsModel {
  const factory TransactionStatsModel({
    @JsonKey(name: 'total_income') required double totalIncome,
    @JsonKey(name: 'total_expenses') required double totalExpenses,
    @JsonKey(name: 'savings_rate') required double savingsRate,
    @JsonKey(name: 'impulsive_spending_total')
    required double impulsiveSpendingTotal,
    @JsonKey(name: 'by_category') required Map<String, double> byCategory,
    @JsonKey(name: 'by_emotion') required Map<String, double> byEmotion,
  }) = _TransactionStatsModel;

  factory TransactionStatsModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatsModelFromJson(json);
}

// ─── Mappers ─────────────────────────────────────────────────────────────────

extension TransactionModelMapper on TransactionModel {
  Transaction toDomain() => Transaction(
        id: id,
        userId: userId,
        amount: amount,
        category: _parseCategory(category),
        subcategory: subcategory,
        description: description,
        emotionBefore: emotionBefore,
        emotionAfter: emotionAfter,
        createdAt: DateTime.parse(createdAt),
        isImpulsive: isImpulsive,
        aiTags: aiTags,
      );

  TransactionCategory _parseCategory(String cat) {
    return TransactionCategory.values.firstWhere(
      (c) => c.name == cat,
      orElse: () => TransactionCategory.other,
    );
  }
}

extension TransactionStatsModelMapper on TransactionStatsModel {
  TransactionStats toDomain() => TransactionStats(
        totalIncome: totalIncome,
        totalExpenses: totalExpenses,
        savingsRate: savingsRate,
        impulsiveSpendingTotal: impulsiveSpendingTotal,
        byCategory: byCategory,
        byEmotion: byEmotion,
      );
}
