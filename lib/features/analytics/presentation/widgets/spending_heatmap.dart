import 'package:flutter/material.dart';
import '../../domain/entities/analytics_data.dart';
import '../../../../core/theme/app_theme.dart';

class SpendingHeatmap extends StatelessWidget {
  final List<HeatmapDay> days;

  const SpendingHeatmap({super.key, required this.days});

  @override
  Widget build(BuildContext context) {
    // Group into weeks (columns), 7 rows (days of week)
    final weeks = <List<HeatmapDay?>>[];
    if (days.isNotEmpty) {
      // Pad to start on correct weekday
      final firstDay = days.first.date;
      final leadingEmpty = firstDay.weekday % 7;
      final padded = [
        ...List.filled(leadingEmpty, null),
        ...days,
      ];
      for (var i = 0; i < padded.length; i += 7) {
        weeks.add(
          padded.sublist(i, i + 7 > padded.length ? padded.length : i + 7),
        );
      }
    }

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SPENDING HEATMAP',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      letterSpacing: 2,
                    ),
              ),
              Row(
                children: [
                  Text(
                    'Less',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontSize: 9,
                        ),
                  ),
                  const SizedBox(width: 4),
                  ...List.generate(
                    5,
                    (i) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _intensityColor(i),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'More',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontSize: 9,
                        ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: weeks
                  .map(
                    (week) => Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Column(
                        children: List.generate(7, (i) {
                          final day = i < week.length ? week[i] : null;
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Tooltip(
                              message: day != null
                                  ? '\$${day.amount.toStringAsFixed(0)} on ${_fmtDate(day.date)}'
                                  : '',
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: day != null
                                      ? _intensityColor(day.intensity)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Color _intensityColor(int intensity) {
    switch (intensity) {
      case 0:
        return AppTheme.border;
      case 1:
        return AppTheme.accent.withOpacity(0.25);
      case 2:
        return AppTheme.accent.withOpacity(0.5);
      case 3:
        return AppTheme.accent.withOpacity(0.75);
      default:
        return AppTheme.accent;
    }
  }

  String _fmtDate(DateTime d) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return '${months[d.month - 1]} ${d.day}';
  }
}
