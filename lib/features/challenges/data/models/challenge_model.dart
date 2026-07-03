import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/challenge.dart';

part 'challenge_model.freezed.dart';
part 'challenge_model.g.dart';

@freezed
class ChallengeModel with _$ChallengeModel {
  const factory ChallengeModel({
    required String id,
    required String title,
    required String description,
    @JsonKey(name: 'reward_points') required int rewardPoints,
    required String type,
    required String status,
    required double progress,
    @JsonKey(name: 'expires_at') String? expiresAt,
  }) = _ChallengeModel;

  factory ChallengeModel.fromJson(Map<String, dynamic> json) =>
      _$ChallengeModelFromJson(json);
}

@freezed
class UserGameStatsModel with _$UserGameStatsModel {
  const factory UserGameStatsModel({
    @JsonKey(name: 'xp_points') required int xpPoints,
    required int level,
    @JsonKey(name: 'streak_days') required int streakDays,
    @JsonKey(name: 'longest_streak') required int longestStreak,
    @JsonKey(name: 'challenges_completed') required int challengesCompleted,
    @JsonKey(name: 'active_challenges')
    required List<ChallengeModel> activeChallenges,
    @JsonKey(name: 'completed_challenges')
    required List<ChallengeModel> completedChallenges,
  }) = _UserGameStatsModel;

  factory UserGameStatsModel.fromJson(Map<String, dynamic> json) =>
      _$UserGameStatsModelFromJson(json);
}

extension ChallengeModelMapper on ChallengeModel {
  Challenge toDomain() => Challenge(
        id: id,
        title: title,
        description: description,
        rewardPoints: rewardPoints,
        type: _parseType(type),
        status: _parseStatus(status),
        progress: progress,
        expiresAt: expiresAt != null ? DateTime.parse(expiresAt!) : null,
      );

  ChallengeType _parseType(String t) {
    switch (t) {
      case 'no_impulse':
        return ChallengeType.noImpulse;
      case 'savings_goal':
        return ChallengeType.savingsGoal;
      case 'log_streak':
        return ChallengeType.logStreak;
      case 'category_limit':
        return ChallengeType.categoryLimit;
      default:
        return ChallengeType.weeklyReview;
    }
  }

  ChallengeStatus _parseStatus(String s) {
    switch (s) {
      case 'completed':
        return ChallengeStatus.completed;
      case 'failed':
        return ChallengeStatus.failed;
      case 'locked':
        return ChallengeStatus.locked;
      default:
        return ChallengeStatus.active;
    }
  }
}

extension UserGameStatsModelMapper on UserGameStatsModel {
  UserGameStats toDomain() => UserGameStats(
        xpPoints: xpPoints,
        level: level,
        streakDays: streakDays,
        longestStreak: longestStreak,
        challengesCompleted: challengesCompleted,
        activeChallenges: activeChallenges.map((c) => c.toDomain()).toList(),
        completedChallenges:
            completedChallenges.map((c) => c.toDomain()).toList(),
      );
}
