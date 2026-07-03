import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_data.freezed.dart';

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required double currentBalance,
    required double monthlyIncome,
    required double monthlyExpenses,
    required double savingsRate,
    required int aiRiskScore,
    required int emotionalScore,
    required List<BalancePoint> balanceHistory,
    required List<SpendingPoint> weeklySpending,
    required int streakDays,
    required int xpPoints,
    required int level,
  }) = _DashboardData;
}

@freezed
class BalancePoint with _$BalancePoint {
  const factory BalancePoint({
    required DateTime date,
    required double balance,
  }) = _BalancePoint;
}

@freezed
class SpendingPoint with _$SpendingPoint {
  const factory SpendingPoint({
    required String day,
    required double amount,
    required double impulsive,
  }) = _SpendingPoint;
}
