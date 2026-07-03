import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../providers/analytics_providers.dart';
import '../widgets/spending_heatmap.dart';
import '../widgets/category_chart.dart';
import '../widgets/emotional_spending_graph.dart';
import '../widgets/risk_and_comparison.dart';
import '../../../../core/theme/app_theme.dart';

class AnalyticsPage extends ConsumerWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analyticsAsync = ref.watch(analyticsNotifierProvider);

    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: RefreshIndicator(
        color: AppTheme.accent,
        backgroundColor: AppTheme.surface,
        onRefresh: () => ref.read(analyticsNotifierProvider.notifier).refresh(),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true,
              backgroundColor: AppTheme.bg,
              expandedHeight: 80,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DEEP DIVE',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppTheme.accent,
                            letterSpacing: 2,
                          ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Analytics',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: analyticsAsync.when(
                data: (data) => Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
                  child: Column(
                    children: [
                      SpendingHeatmap(days: data.heatmap)
                          .animate()
                          .fadeIn(duration: 300.ms)
                          .slideY(begin: 0.05),

                      const SizedBox(height: 14),

                      CategoryChart(categories: data.categoryBreakdown)
                          .animate()
                          .fadeIn(duration: 300.ms, delay: 60.ms),

                      const SizedBox(height: 14),

                      EmotionalSpendingGraph(data: data.emotionalSpending)
                          .animate()
                          .fadeIn(duration: 300.ms, delay: 120.ms),

                      const SizedBox(height: 14),

                      RiskTimelineChart(timeline: data.riskTimeline)
                          .animate()
                          .fadeIn(duration: 300.ms, delay: 180.ms),

                      const SizedBox(height: 14),

                      PeerComparisonCard(comparison: data.comparison)
                          .animate()
                          .fadeIn(duration: 300.ms, delay: 240.ms),
                    ],
                  ),
                ),
                loading: () => SizedBox(
                  height: 400,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: AppTheme.accent,
                      strokeWidth: 2,
                    ),
                  ),
                ),
                error: (e, _) => Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      const Icon(Icons.error_outline,
                          color: AppTheme.textMuted, size: 40),
                      const SizedBox(height: 12),
                      Text(
                        'Failed to load analytics',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () =>
                            ref.refresh(analyticsNotifierProvider),
                        child: const Text('Try again'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
