import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required String userId,
    required double amount,
    required TransactionCategory category,
    String? subcategory,
    String? description,
    required String? emotionBefore,
    required String? emotionAfter,
    required DateTime createdAt,
    bool? isImpulsive,
    List<String>? aiTags,
  }) = _Transaction;
}

@freezed
class TransactionStats with _$TransactionStats {
  const factory TransactionStats({
    required double totalIncome,
    required double totalExpenses,
    required double savingsRate,
    required double impulsiveSpendingTotal,
    required Map<String, double> byCategory,
    required Map<String, double> byEmotion,
  }) = _TransactionStats;
}

enum TransactionCategory {
  food,
  transport,
  entertainment,
  shopping,
  health,
  education,
  subscriptions,
  bills,
  savings,
  income,
  other;

  String get label {
    switch (this) {
      case TransactionCategory.food:
        return 'Food & Drinks';
      case TransactionCategory.transport:
        return 'Transport';
      case TransactionCategory.entertainment:
        return 'Entertainment';
      case TransactionCategory.shopping:
        return 'Shopping';
      case TransactionCategory.health:
        return 'Health';
      case TransactionCategory.education:
        return 'Education';
      case TransactionCategory.subscriptions:
        return 'Subscriptions';
      case TransactionCategory.bills:
        return 'Bills';
      case TransactionCategory.savings:
        return 'Savings';
      case TransactionCategory.income:
        return 'Income';
      case TransactionCategory.other:
        return 'Other';
    }
  }

  String get emoji {
    switch (this) {
      case TransactionCategory.food:
        return '🍔';
      case TransactionCategory.transport:
        return '🚗';
      case TransactionCategory.entertainment:
        return '🎮';
      case TransactionCategory.shopping:
        return '🛍️';
      case TransactionCategory.health:
        return '💊';
      case TransactionCategory.education:
        return '📚';
      case TransactionCategory.subscriptions:
        return '📱';
      case TransactionCategory.bills:
        return '💡';
      case TransactionCategory.savings:
        return '💰';
      case TransactionCategory.income:
        return '💵';
      case TransactionCategory.other:
        return '📦';
    }
  }

  bool get isIncome => this == TransactionCategory.income;
}
