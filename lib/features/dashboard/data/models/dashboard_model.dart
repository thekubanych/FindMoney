import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/dashboard_data.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    @JsonKey(name: 'current_balance') required double currentBalance,
    @JsonKey(name: 'monthly_income') required double monthlyIncome,
    @JsonKey(name: 'monthly_expenses') required double monthlyExpenses,
    @JsonKey(name: 'savings_rate') required double savingsRate,
    @JsonKey(name: 'ai_risk_score') required int aiRiskScore,
    @JsonKey(name: 'emotional_score') required int emotionalScore,
    @JsonKey(name: 'balance_history') required List<BalancePointModel> balanceHistory,
    @JsonKey(name: 'weekly_spending') required List<SpendingPointModel> weeklySpending,
    @JsonKey(name: 'streak_days') required int streakDays,
    @JsonKey(name: 'xp_points') required int xpPoints,
    required int level,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}

@freezed
class BalancePointModel with _$BalancePointModel {
  const factory BalancePointModel({
    required String date,
    required double balance,
  }) = _BalancePointModel;

  factory BalancePointModel.fromJson(Map<String, dynamic> json) =>
      _$BalancePointModelFromJson(json);
}

@freezed
class SpendingPointModel with _$SpendingPointModel {
  const factory SpendingPointModel({
    required String day,
    required double amount,
    required double impulsive,
  }) = _SpendingPointModel;

  factory SpendingPointModel.fromJson(Map<String, dynamic> json) =>
      _$SpendingPointModelFromJson(json);
}

extension DashboardModelMapper on DashboardModel {
  DashboardData toDomain() => DashboardData(
        currentBalance: currentBalance,
        monthlyIncome: monthlyIncome,
        monthlyExpenses: monthlyExpenses,
        savingsRate: savingsRate,
        aiRiskScore: aiRiskScore,
        emotionalScore: emotionalScore,
        balanceHistory: balanceHistory
            .map((p) => BalancePoint(
                  date: DateTime.parse(p.date),
                  balance: p.balance,
                ))
            .toList(),
        weeklySpending: weeklySpending
            .map((p) => SpendingPoint(
                  day: p.day,
                  amount: p.amount,
                  impulsive: p.impulsive,
                ))
            .toList(),
        streakDays: streakDays,
        xpPoints: xpPoints,
        level: level,
      );
}
