import 'package:flutter/material.dart';
import '../../domain/entities/ai_report.dart';
import '../../../../core/theme/app_theme.dart';

class InsightCard extends StatelessWidget {
  final AiInsight insight;

  const InsightCard({super.key, required this.insight});

  @override
  Widget build(BuildContext context) {
    final color = _severityColor(insight.severity);
    final icon = _insightIcon(insight.type);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppTheme.border),
        // Left accent stripe via boxShadow trick
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left stripe
          Container(
            width: 3,
            height: 44,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 14),
          // Icon
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color, size: 18),
          ),
          const SizedBox(width: 12),
          // Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        insight.title,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    _SeverityChip(severity: insight.severity, color: color),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  insight.description,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                        height: 1.5,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _severityColor(InsightSeverity severity) {
    switch (severity) {
      case InsightSeverity.danger:
        return AppTheme.red;
      case InsightSeverity.warning:
        return AppTheme.yellow;
      case InsightSeverity.positive:
        return AppTheme.green;
      case InsightSeverity.info:
        return AppTheme.accentCyan;
    }
  }

  IconData _insightIcon(AiInsightType type) {
    switch (type) {
      case AiInsightType.emotionalSpending:
        return Icons.sentiment_dissatisfied_outlined;
      case AiInsightType.selfDeception:
        return Icons.psychology_outlined;
      case AiInsightType.povertyRisk:
        return Icons.warning_amber_outlined;
      case AiInsightType.behaviorPattern:
        return Icons.loop_outlined;
      case AiInsightType.positiveHabit:
        return Icons.check_circle_outline;
    }
  }
}

class _SeverityChip extends StatelessWidget {
  final InsightSeverity severity;
  final Color color;

  const _SeverityChip({required this.severity, required this.color});

  @override
  Widget build(BuildContext context) {
    final label = switch (severity) {
      InsightSeverity.danger => 'DANGER',
      InsightSeverity.warning => 'WARNING',
      InsightSeverity.positive => 'GOOD',
      InsightSeverity.info => 'INFO',
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontSize: 9,
              letterSpacing: 1,
            ),
      ),
    );
  }
}
