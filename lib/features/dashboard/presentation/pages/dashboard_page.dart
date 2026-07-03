import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../providers/dashboard_providers.dart';
import '../widgets/balance_card.dart';
import '../widgets/ai_risk_score_card.dart';
import '../widgets/weekly_spending_chart.dart';
import '../widgets/balance_history_chart.dart';
import '../widgets/gamification_card.dart';
import '../widgets/quick_actions_row.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../../transactions/presentation/pages/transactions_page.dart';
import '../../../transactions/presentation/providers/transaction_providers.dart';
import '../../../../core/theme/app_theme.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashAsync = ref.watch(dashboardNotifierProvider);
    final user = ref.watch(currentUserProvider);

    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: RefreshIndicator(
        color: AppTheme.accent,
        backgroundColor: AppTheme.surface,
        onRefresh: () => ref.read(dashboardNotifierProvider.notifier).refresh(),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            // ── App bar ────────────────────────────────────────────────────
            SliverToBoxAdapter(
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _greeting(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 13),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            user?.name ?? 'Welcome back',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontSize: 22),
                          ),
                        ],
                      ),
                      // Avatar / plan badge
                      GestureDetector(
                        onTap: () => context.go('/profile'),
                        child: Stack(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: AppTheme.surfaceElevated,
                                shape: BoxShape.circle,
                                border: Border.all(color: AppTheme.border),
                              ),
                              child: user?.avatarUrl != null
                                  ? ClipOval(
                                      child: Image.network(
                                        user!.avatarUrl!,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Center(
                                      child: Text(
                                        user?.name.isNotEmpty == true
                                            ? user!.name[0].toUpperCase()
                                            : '?',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              color: AppTheme.accent,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ),
                            ),
                            if (user?.isPremium == true)
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    color: user!.isPro
                                        ? AppTheme.accentPurple
                                        : AppTheme.accentCyan,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppTheme.bg, width: 1.5),
                                  ),
                                  child: const Icon(Icons.star_rounded,
                                      size: 8, color: Colors.white),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ── Body ───────────────────────────────────────────────────────
            SliverToBoxAdapter(
              child: dashAsync.when(
                data: (data) => Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                  child: Column(
                    children: [
                      // Balance card
                      BalanceCard(data: data)
                          .animate()
                          .fadeIn(duration: 350.ms)
                          .slideY(begin: 0.08),

                      const SizedBox(height: 14),

                      // Quick actions
                      const QuickActionsRow()
                          .animate()
                          .fadeIn(duration: 350.ms, delay: 60.ms),

                      const SizedBox(height: 14),

                      // AI Risk score
                      AiRiskScoreCard(
                        riskScore: data.aiRiskScore,
                        emotionalScore: data.emotionalScore,
                        onTap: () => context.go('/ai'),
                      )
                          .animate()
                          .fadeIn(duration: 350.ms, delay: 100.ms),

                      const SizedBox(height: 14),

                      // Weekly spending chart
                      if (data.weeklySpending.isNotEmpty)
                        WeeklySpendingChart(points: data.weeklySpending)
                            .animate()
                            .fadeIn(duration: 350.ms, delay: 150.ms),

                      const SizedBox(height: 14),

                      // Balance history chart
                      if (data.balanceHistory.isNotEmpty)
                        BalanceHistoryChart(points: data.balanceHistory)
                            .animate()
                            .fadeIn(duration: 350.ms, delay: 200.ms),

                      const SizedBox(height: 14),

                      // Gamification
                      GamificationCard(
                        streakDays: data.streakDays,
                        xpPoints: data.xpPoints,
                        level: data.level,
                      )
                          .animate()
                          .fadeIn(duration: 350.ms, delay: 250.ms),

                      const SizedBox(height: 24),

                      // Recent transactions header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'RECENT',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(letterSpacing: 2),
                          ),
                          GestureDetector(
                            onTap: () => context.go('/transactions'),
                            child: Text(
                              'See all →',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: AppTheme.accent,
                                  ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      // Recent transactions inline
                      _RecentTransactions(),
                    ],
                  ),
                ),
                loading: () => const _DashboardSkeleton(),
                error: (e, _) => _ErrorState(
                  message: e.toString(),
                  onRetry: () =>
                      ref.refresh(dashboardNotifierProvider),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _greeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good morning 👋';
    if (hour < 18) return 'Good afternoon 👋';
    return 'Good evening 👋';
  }
}

// ─── Recent transactions (mini list from transactions provider) ───────────────

class _RecentTransactions extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final txAsync = ref.watch(transactionsNotifierProvider);

    return txAsync.when(
      data: (list) {
        final recent = list.take(5).toList();
        if (recent.isEmpty) {
          return Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppTheme.border),
            ),
            child: Center(
              child: Text(
                'No transactions yet. Add your first one!',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 13,
                    ),
              ),
            ),
          );
        }
        return Column(
          children: recent
              .map((tx) => Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: TransactionTile(transaction: tx),
                  ))
              .toList(),
        );
      },
      loading: () => const SizedBox(
        height: 80,
        child: Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: AppTheme.accent,
          ),
        ),
      ),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

// ─── Skeleton loader ──────────────────────────────────────────────────────────

class _DashboardSkeleton extends StatelessWidget {
  const _DashboardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _SkeletonBox(height: 160),
          const SizedBox(height: 14),
          _SkeletonBox(height: 64),
          const SizedBox(height: 14),
          _SkeletonBox(height: 100),
          const SizedBox(height: 14),
          _SkeletonBox(height: 180),
        ]
            .animate(interval: 100.ms)
            .shimmer(
              duration: 1200.ms,
              color: AppTheme.surfaceElevated,
            ),
      ),
    );
  }
}

class _SkeletonBox extends StatelessWidget {
  final double height;
  const _SkeletonBox({required this.height});

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.border),
        ),
      );
}

// ─── Error state ──────────────────────────────────────────────────────────────

class _ErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorState({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.wifi_off_rounded,
              color: AppTheme.textMuted, size: 48),
          const SizedBox(height: 16),
          Text(
            'Could not load dashboard',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 12,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }
}
