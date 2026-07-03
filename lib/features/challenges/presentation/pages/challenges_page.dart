import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../providers/challenges_providers.dart';
import '../widgets/level_progress_hero.dart';
import '../widgets/challenge_card.dart';
import '../../../../core/theme/app_theme.dart';

class ChallengesPage extends ConsumerWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(challengesNotifierProvider);

    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(title: const Text('Challenges')),
      body: RefreshIndicator(
        color: AppTheme.accent,
        backgroundColor: AppTheme.surface,
        onRefresh: () => ref.read(challengesNotifierProvider.notifier).refresh(),
        child: statsAsync.when(
          data: (stats) => ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
            children: [
              LevelProgressHero(
                level: stats.level,
                xpPoints: stats.xpPoints,
                streakDays: stats.streakDays,
                longestStreak: stats.longestStreak,
              )
                  .animate()
                  .fadeIn(duration: 350.ms)
                  .slideY(begin: 0.06),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ACTIVE CHALLENGES',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          letterSpacing: 2,
                        ),
                  ),
                  Text(
                    '${stats.challengesCompleted} completed',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 11,
                        ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              if (stats.activeChallenges.isEmpty)
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppTheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppTheme.border),
                  ),
                  child: Center(
                    child: Text(
                      'No active challenges right now',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                )
              else
                ...stats.activeChallenges.asMap().entries.map(
                      (entry) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ChallengeCard(
                          challenge: entry.value,
                          onClaim: () => ref
                              .read(challengesNotifierProvider.notifier)
                              .claim(entry.value.id),
                        )
                            .animate()
                            .fadeIn(
                              duration: 300.ms,
                              delay: Duration(
                                  milliseconds: 80 + entry.key * 60),
                            )
                            .slideX(begin: 0.04),
                      ),
                    ),

              if (stats.completedChallenges.isNotEmpty) ...[
                const SizedBox(height: 24),
                Text(
                  'COMPLETED',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        letterSpacing: 2,
                      ),
                ),
                const SizedBox(height: 12),
                ...stats.completedChallenges.map(
                  (c) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ChallengeCard(challenge: c),
                  ),
                ),
              ],
            ],
          ),
          loading: () => Center(
            child: CircularProgressIndicator(
              color: AppTheme.accent,
              strokeWidth: 2,
            ),
          ),
          error: (e, _) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline,
                    color: AppTheme.textMuted, size: 40),
                const SizedBox(height: 12),
                Text('Failed to load challenges',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => ref.refresh(challengesNotifierProvider),
                  child: const Text('Try again'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
