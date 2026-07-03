// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChallengeModel _$ChallengeModelFromJson(Map<String, dynamic> json) =>
    _ChallengeModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      rewardPoints: (json['reward_points'] as num).toInt(),
      type: json['type'] as String,
      status: json['status'] as String,
      progress: (json['progress'] as num).toDouble(),
      expiresAt: json['expires_at'] as String?,
    );

Map<String, dynamic> _$ChallengeModelToJson(_ChallengeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'reward_points': instance.rewardPoints,
      'type': instance.type,
      'status': instance.status,
      'progress': instance.progress,
      'expires_at': instance.expiresAt,
    };

_UserGameStatsModel _$UserGameStatsModelFromJson(Map<String, dynamic> json) =>
    _UserGameStatsModel(
      xpPoints: (json['xp_points'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      streakDays: (json['streak_days'] as num).toInt(),
      longestStreak: (json['longest_streak'] as num).toInt(),
      challengesCompleted: (json['challenges_completed'] as num).toInt(),
      activeChallenges: (json['active_challenges'] as List<dynamic>)
          .map((e) => ChallengeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      completedChallenges: (json['completed_challenges'] as List<dynamic>)
          .map((e) => ChallengeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserGameStatsModelToJson(_UserGameStatsModel instance) =>
    <String, dynamic>{
      'xp_points': instance.xpPoints,
      'level': instance.level,
      'streak_days': instance.streakDays,
      'longest_streak': instance.longestStreak,
      'challenges_completed': instance.challengesCompleted,
      'active_challenges': instance.activeChallenges,
      'completed_challenges': instance.completedChallenges,
    };
