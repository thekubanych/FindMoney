import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../domain/entities/challenge.dart';
import '../../../../core/theme/app_theme.dart';

class ChallengeCard extends StatelessWidget {
  final Challenge challenge;
  final VoidCallback? onClaim;

  const ChallengeCard({super.key, required this.challenge, this.onClaim});

  @override
  Widget build(BuildContext context) {
    final isComplete = challenge.progress >= 1.0;
    final isClaimable =
        isComplete && challenge.status == ChallengeStatus.active;
    final isDone = challenge.status == ChallengeStatus.completed;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isClaimable
              ? AppTheme.green.withOpacity(0.5)
              : AppTheme.border,
          width: isClaimable ? 1.5 : 1,
        ),
      ),
      child: Row(
        children: [
          // Icon
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppTheme.surfaceElevated,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                challenge.type.icon,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),

          const SizedBox(width: 14),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        challenge.title,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 13,
                                  decoration: isDone
                                      ? TextDecoration.lineThrough
                                      : null,
                                  color: isDone
                                      ? AppTheme.textMuted
                                      : AppTheme.textPrimary,
                                ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppTheme.yellow.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '+${challenge.rewardPoints} XP',
                        style:
                            Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: AppTheme.yellow,
                                  fontSize: 9,
                                ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  challenge.description,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 11,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                if (!isDone) ...[
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: LinearProgressIndicator(
                            value: challenge.progress,
                            backgroundColor: AppTheme.border,
                            valueColor: AlwaysStoppedAnimation(
                              isClaimable
                                  ? AppTheme.green
                                  : AppTheme.accent,
                            ),
                            minHeight: 5,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${(challenge.progress * 100).toInt()}%',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],

                if (isClaimable) ...[
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: onClaim,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: AppTheme.green.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(color: AppTheme.green.withOpacity(0.4)),
                      ),
                      child: Text(
                        'CLAIM REWARD',
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: AppTheme.green,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                    ),
                  )
                      .animate(onPlay: (c) => c.repeat(reverse: true))
                      .scale(
                        begin: const Offset(1, 1),
                        end: const Offset(1.02, 1.02),
                        duration: 800.ms,
                      ),
                ],
              ],
            ),
          ),

          if (isDone)
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.check_circle_rounded,
                  color: AppTheme.green, size: 20),
            ),
        ],
      ),
    );
  }
}
