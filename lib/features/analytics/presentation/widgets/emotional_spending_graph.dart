import 'package:flutter/material.dart';
import '../../domain/entities/analytics_data.dart';
import '../../../../core/theme/app_theme.dart';

class EmotionalSpendingGraph extends StatelessWidget {
  final List<EmotionSpending> data;

  const EmotionalSpendingGraph({super.key, required this.data});

  static const _emotionEmojis = {
    'calm': '😌',
    'happy': '😊',
    'stressed': '😤',
    'anxious': '😰',
    'bored': '😑',
    'sad': '😢',
    'excited': '🤩',
    'guilty': '😬',
  };

  static const _negativeEmotions = {'stressed', 'anxious', 'bored', 'sad', 'guilty'};

  @override
  Widget build(BuildContext context) {
    final sorted = [...data]
      ..sort((a, b) => b.totalAmount.compareTo(a.totalAmount));
    final maxAmount = sorted.isEmpty
        ? 1.0
        : sorted.map((e) => e.totalAmount).reduce((a, b) => a > b ? a : b);

    final negativeTotal = sorted
        .where((e) => _negativeEmotions.contains(e.emotion))
        .fold<double>(0, (a, b) => a + b.totalAmount);
    final total = sorted.fold<double>(0, (a, b) => a + b.totalAmount);
    final negativePercent = total > 0 ? (negativeTotal / total * 100) : 0.0;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: negativePercent > 50
              ? AppTheme.red.withOpacity(0.3)
              : AppTheme.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'EMOTIONAL SPENDING',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      letterSpacing: 2,
                    ),
              ),
              if (negativePercent > 50)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppTheme.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '${negativePercent.toStringAsFixed(0)}% NEGATIVE',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppTheme.red,
                          fontSize: 9,
                        ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 18),

          ...sorted.map((e) {
            final isNegative = _negativeEmotions.contains(e.emotion);
            final ratio = e.totalAmount / maxAmount;
            final color = isNegative ? AppTheme.red : AppTheme.green;

            return Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        _emotionEmojis[e.emotion] ?? '😶',
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        e.emotion[0].toUpperCase() + e.emotion.substring(1),
                        style:
                            Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontSize: 12,
                                  color: AppTheme.textPrimary,
                                ),
                      ),
                      const Spacer(),
                      Text(
                        '\$${e.totalAmount.toStringAsFixed(0)}',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                  color: color,
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '(${e.transactionCount})',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: LinearProgressIndicator(
                      value: ratio,
                      backgroundColor: AppTheme.border,
                      valueColor: AlwaysStoppedAnimation(color),
                      minHeight: 5,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
