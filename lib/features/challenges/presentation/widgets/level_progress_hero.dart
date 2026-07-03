import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_theme.dart';

class LevelProgressHero extends StatelessWidget {
  final int level;
  final int xpPoints;
  final int streakDays;
  final int longestStreak;

  const LevelProgressHero({
    super.key,
    required this.level,
    required this.xpPoints,
    required this.streakDays,
    required this.longestStreak,
  });

  @override
  Widget build(BuildContext context) {
    final levelName = level < AppConstants.levels.length
        ? AppConstants.levels[level]
        : AppConstants.levels.last;
    final levelColor = level < AppTheme.levelColors.length
        ? AppTheme.levelColors[level]
        : AppTheme.green;
    final nextLevelName = level + 1 < AppConstants.levels.length
        ? AppConstants.levels[level + 1]
        : null;

    final currentThreshold = level < AppConstants.levelXpThresholds.length
        ? AppConstants.levelXpThresholds[level]
        : 0;
    final nextThreshold = level + 1 < AppConstants.levelXpThresholds.length
        ? AppConstants.levelXpThresholds[level + 1]
        : xpPoints + 1;
    final progress = ((xpPoints - currentThreshold) /
            (nextThreshold - currentThreshold))
        .clamp(0.0, 1.0);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            levelColor.withOpacity(0.15),
            AppTheme.surface,
          ],
        ),
        border: Border.all(color: levelColor.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: levelColor.withOpacity(0.15),
                  shape: BoxShape.circle,
                  border: Border.all(color: levelColor, width: 2),
                ),
                child: Center(
                  child: Text(
                    '${level + 1}',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: levelColor,
                          fontSize: 22,
                        ),
                  ),
                ),
              )
                  .animate()
                  .scale(
                    begin: const Offset(0.7, 0.7),
                    duration: 500.ms,
                    curve: Curves.easeOutBack,
                  ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LEVEL ${level + 1}',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            letterSpacing: 2,
                            color: levelColor,
                          ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      levelName,
                      style:
                          Theme.of(context).textTheme.displaySmall?.copyWith(
                                fontSize: 22,
                              ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          if (nextLevelName != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$xpPoints XP',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                        color: levelColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  'Next: $nextLevelName ($nextThreshold XP)',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 11,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: progress),
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeOutCubic,
                builder: (context, value, _) => LinearProgressIndicator(
                  value: value,
                  backgroundColor: AppTheme.border,
                  valueColor: AlwaysStoppedAnimation(levelColor),
                  minHeight: 8,
                ),
              ),
            ),
          ] else
            Text(
              '🏆 Maximum level reached',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: levelColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),

          const SizedBox(height: 20),
          const Divider(color: AppTheme.border, height: 1),
          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: _StatBlock(
                  icon: '🔥',
                  value: '$streakDays',
                  label: 'Current streak',
                ),
              ),
              Container(width: 1, height: 36, color: AppTheme.border),
              Expanded(
                child: _StatBlock(
                  icon: '🏅',
                  value: '$longestStreak',
                  label: 'Longest streak',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatBlock extends StatelessWidget {
  final String icon;
  final String value;
  final String label;

  const _StatBlock({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 10,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
