// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    _DashboardModel(
      currentBalance: (json['current_balance'] as num).toDouble(),
      monthlyIncome: (json['monthly_income'] as num).toDouble(),
      monthlyExpenses: (json['monthly_expenses'] as num).toDouble(),
      savingsRate: (json['savings_rate'] as num).toDouble(),
      aiRiskScore: (json['ai_risk_score'] as num).toInt(),
      emotionalScore: (json['emotional_score'] as num).toInt(),
      balanceHistory: (json['balance_history'] as List<dynamic>)
          .map((e) => BalancePointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weeklySpending: (json['weekly_spending'] as List<dynamic>)
          .map((e) => SpendingPointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      streakDays: (json['streak_days'] as num).toInt(),
      xpPoints: (json['xp_points'] as num).toInt(),
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardModelToJson(_DashboardModel instance) =>
    <String, dynamic>{
      'current_balance': instance.currentBalance,
      'monthly_income': instance.monthlyIncome,
      'monthly_expenses': instance.monthlyExpenses,
      'savings_rate': instance.savingsRate,
      'ai_risk_score': instance.aiRiskScore,
      'emotional_score': instance.emotionalScore,
      'balance_history': instance.balanceHistory,
      'weekly_spending': instance.weeklySpending,
      'streak_days': instance.streakDays,
      'xp_points': instance.xpPoints,
      'level': instance.level,
    };

_BalancePointModel _$BalancePointModelFromJson(Map<String, dynamic> json) =>
    _BalancePointModel(
      date: json['date'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$BalancePointModelToJson(_BalancePointModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'balance': instance.balance,
    };

_SpendingPointModel _$SpendingPointModelFromJson(Map<String, dynamic> json) =>
    _SpendingPointModel(
      day: json['day'] as String,
      amount: (json['amount'] as num).toDouble(),
      impulsive: (json['impulsive'] as num).toDouble(),
    );

Map<String, dynamic> _$SpendingPointModelToJson(_SpendingPointModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'amount': instance.amount,
      'impulsive': instance.impulsive,
    };
