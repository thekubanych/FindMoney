import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../domain/entities/ai_report.dart';
import '../providers/ai_report_providers.dart';
import '../widgets/behavior_score_card.dart';
import '../widgets/ai_report_card.dart';
import '../widgets/insight_card.dart';
import '../widgets/prediction_card.dart';
import '../widgets/analyze_button.dart';
import '../widgets/report_type_selector.dart';
import '../../../../core/theme/app_theme.dart';

class AiReportsPage extends ConsumerWidget {
  const AiReportsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportAsync = ref.watch(dailyReportNotifierProvider);
    final scoreAsync = ref.watch(behaviorScoreNotifierProvider);

    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Analyze Now button
                  const AnalyzeButton()
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideY(begin: 0.1),

                  const SizedBox(height: 24),

                  // Behavior scores
                  scoreAsync.when(
                    data: (score) => BehaviorScoreCard(score: score)
                        .animate()
                        .fadeIn(duration: 400.ms, delay: 100.ms),
                    loading: () => const _ScoreSkeleton(),
                    error: (e, _) => _ErrorWidget(
                      message: e.toString(),
                      onRetry: () =>
                          ref.refresh(behaviorScoreNotifierProvider),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Report type tabs
                  const ReportTypeSelector()
                      .animate()
                      .fadeIn(delay: 150.ms),

                  const SizedBox(height: 16),

                  // Selected report content
                  _ReportContent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: false,
      backgroundColor: AppTheme.bg,
      expandedHeight: 80,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AI ANALYSIS',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppTheme.accent,
                    letterSpacing: 2,
                  ),
            ),
            const SizedBox(height: 2),
            Text(
              'Behavioral Reports',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _ReportContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportAsync = ref.watch(selectedReportProvider);

    return reportAsync.when(
      data: (report) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main report card
          AiReportCard(report: report)
              .animate()
              .fadeIn(duration: 400.ms)
              .slideY(begin: 0.05),

          if (report.insights?.isNotEmpty == true) ...[
            const SizedBox(height: 24),
            Text(
              'INSIGHTS',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    letterSpacing: 2,
                  ),
            ),
            const SizedBox(height: 12),
            ...report.insights!.asMap().entries.map(
                  (entry) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InsightCard(insight: entry.value)
                        .animate()
                        .fadeIn(
                          duration: 300.ms,
                          delay: Duration(milliseconds: entry.key * 80),
                        )
                        .slideX(begin: 0.05),
                  ),
                ),
          ],

          if (report.prediction != null) ...[
            const SizedBox(height: 24),
            Text(
              'PREDICTION',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    letterSpacing: 2,
                  ),
            ),
            const SizedBox(height: 12),
            PredictionCard(prediction: report.prediction!)
                .animate()
                .fadeIn(duration: 400.ms, delay: 200.ms),
          ],
        ],
      ),
      loading: () => const _ReportSkeleton(),
      error: (e, _) => _ErrorWidget(
        message: e.toString(),
        onRetry: () => ref.refresh(selectedReportProvider),
      ),
    );
  }
}

// ─── Skeleton loaders ─────────────────────────────────────────────────────────

class _ScoreSkeleton extends StatelessWidget {
  const _ScoreSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.border),
      ),
      child: const Center(
        child: CircularProgressIndicator(
          color: AppTheme.accent,
          strokeWidth: 2,
        ),
      ),
    );
  }
}

class _ReportSkeleton extends StatelessWidget {
  const _ReportSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (i) => Container(
          height: 80,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: AppTheme.surface,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppTheme.border),
          ),
        )
            .animate(onPlay: (c) => c.repeat())
            .shimmer(
              duration: 1200.ms,
              color: AppTheme.surfaceElevated,
            ),
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorWidget({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.red.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          const Icon(Icons.error_outline, color: AppTheme.red, size: 32),
          const SizedBox(height: 12),
          Text(
            'Failed to load report',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          Text(
            message,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: onRetry,
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }
}
