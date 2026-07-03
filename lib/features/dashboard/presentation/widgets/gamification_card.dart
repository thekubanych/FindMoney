import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_theme.dart';

class GamificationCard extends StatelessWidget {
  final int streakDays;
  final int xpPoints;
  final int level;

  const GamificationCard({
    super.key,
    required this.streakDays,
    required this.xpPoints,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    final levelName = level < AppConstants.levels.length
        ? AppConstants.levels[level]
        : AppConstants.levels.last;
    final levelColor = level < AppTheme.levelColors.length
        ? AppTheme.levelColors[level]
        : AppTheme.green;

    final currentThreshold = level < AppConstants.levelXpThresholds.length
        ? AppConstants.levelXpThresholds[level]
        : 0;
    final nextThreshold =
        level + 1 < AppConstants.levelXpThresholds.length
            ? AppConstants.levelXpThresholds[level + 1]
            : xpPoints + 1;
    final progress = ((xpPoints - currentThreshold) /
            (nextThreshold - currentThreshold))
        .clamp(0.0, 1.0);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Level badge
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: levelColor.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: levelColor.withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.military_tech_rounded,
                        size: 14, color: levelColor),
                    const SizedBox(width: 4),
                    Text(
                      levelName.toUpperCase(),
                      style:
                          Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: levelColor,
                                letterSpacing: 1,
                                fontSize: 9,
                              ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Streak
              Row(
                children: [
                  Text(
                    '🔥',
                    style: const TextStyle(fontSize: 16),
                  )
                      .animate(onPlay: (c) => c.repeat(reverse: true))
                      .scale(
                        begin: const Offset(1, 1),
                        end: const Offset(1.15, 1.15),
                        duration: 800.ms,
                      ),
                  const SizedBox(width: 4),
                  Text(
                    '$streakDays day streak',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 13,
                          color: AppTheme.yellow,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          // XP progress bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'XP PROGRESS',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 9,
                      letterSpacing: 1.5,
                    ),
              ),
              Text(
                '$xpPoints / $nextThreshold XP',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: levelColor,
                      fontSize: 10,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: AppTheme.border,
              valueColor: AlwaysStoppedAnimation(levelColor),
              minHeight: 6,
            ),
          ),

          const SizedBox(height: 16),
          const Divider(color: AppTheme.border, height: 1),
          const SizedBox(height: 14),

          // XP earning hints
          Text(
            'EARN XP BY',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontSize: 9,
                  letterSpacing: 1.5,
                ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _XpHint(label: 'No impulse buy', xp: '+20 XP'),
              const SizedBox(width: 8),
              _XpHint(label: 'Daily log', xp: '+5 XP'),
              const SizedBox(width: 8),
              _XpHint(label: 'Save money', xp: '+15 XP'),
            ],
          ),
        ],
      ),
    );
  }
}

class _XpHint extends StatelessWidget {
  final String label;
  final String xp;

  const _XpHint({required this.label, required this.xp});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        decoration: BoxDecoration(
          color: AppTheme.surfaceElevated,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppTheme.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              xp,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppTheme.green,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 10,
                    height: 1.3,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
