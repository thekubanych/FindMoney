import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge.freezed.dart';

@freezed
class Challenge with _$Challenge {
  const factory Challenge({
    required String id,
    required String title,
    required String description,
    required int rewardPoints,
    required ChallengeType type,
    required ChallengeStatus status,
    required double progress, // 0.0 - 1.0
    DateTime? expiresAt,
    String? icon,
  }) = _Challenge;
}

@freezed
class UserGameStats with _$UserGameStats {
  const factory UserGameStats({
    required int xpPoints,
    required int level,
    required int streakDays,
    required int longestStreak,
    required int challengesCompleted,
    required List<Challenge> activeChallenges,
    required List<Challenge> completedChallenges,
  }) = _UserGameStats;
}

enum ChallengeType {
  noImpulse,
  savingsGoal,
  logStreak,
  categoryLimit,
  weeklyReview;

  String get icon {
    switch (this) {
      case ChallengeType.noImpulse:
        return '🛑';
      case ChallengeType.savingsGoal:
        return '💰';
      case ChallengeType.logStreak:
        return '📝';
      case ChallengeType.categoryLimit:
        return '🎯';
      case ChallengeType.weeklyReview:
        return '📊';
    }
  }
}

enum ChallengeStatus {
  active,
  completed,
  failed,
  locked;
}
