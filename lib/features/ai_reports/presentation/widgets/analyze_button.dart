import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../providers/ai_report_providers.dart';
import '../../../../core/theme/app_theme.dart';

class AnalyzeButton extends ConsumerWidget {
  const AnalyzeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analyzeState = ref.watch(analyzeNotifierProvider);
    final isLoading = analyzeState is AsyncLoading;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: isLoading
              ? null
              : () => ref.read(analyzeNotifierProvider.notifier).analyze(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              color: isLoading
                  ? AppTheme.accent.withOpacity(0.12)
                  : AppTheme.accent.withOpacity(0.08),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppTheme.accent.withOpacity(isLoading ? 0.3 : 0.5),
                width: 1,
              ),
            ),
            child: Row(
              children: [
                // Animated brain icon
                if (isLoading)
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppTheme.accent,
                    ),
                  )
                else
                  const Icon(
                    Icons.psychology_rounded,
                    color: AppTheme.accent,
                    size: 20,
                  )
                      .animate(onPlay: (c) => c.repeat(reverse: true))
                      .scale(
                        begin: const Offset(1, 1),
                        end: const Offset(1.1, 1.1),
                        duration: 1500.ms,
                        curve: Curves.easeInOut,
                      ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isLoading ? 'Analyzing your behavior...' : 'Analyze Now',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: AppTheme.accent,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      if (!isLoading)
                        Text(
                          'Get AI insights on your recent spending',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 11,
                                    color: AppTheme.textMuted,
                                  ),
                        ),
                    ],
                  ),
                ),

                if (!isLoading)
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppTheme.accent,
                    size: 14,
                  ),
              ],
            ),
          ),
        ),

        // Error state
        if (analyzeState is AsyncError)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                const Icon(Icons.error_outline,
                    color: AppTheme.red, size: 14),
                const SizedBox(width: 6),
                Text(
                  'Analysis failed. Try again.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 11,
                        color: AppTheme.red,
                      ),
                ),
              ],
            ),
          ),

        // Success state
        if (analyzeState is AsyncData && analyzeState.value != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                const Icon(Icons.check_circle_outline,
                    color: AppTheme.green, size: 14),
                const SizedBox(width: 6),
                Text(
                  'Analysis complete — report updated',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 11,
                        color: AppTheme.green,
                      ),
                ),
              ],
            ),
          ).animate().fadeIn(duration: 300.ms),
      ],
    );
  }
}
