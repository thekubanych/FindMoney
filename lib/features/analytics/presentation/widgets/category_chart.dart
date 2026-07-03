import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../domain/entities/analytics_data.dart';
import '../../../../features/transactions/domain/entities/transaction.dart';
import '../../../../core/theme/app_theme.dart';

class CategoryChart extends StatefulWidget {
  final List<CategoryBreakdown> categories;

  const CategoryChart({super.key, required this.categories});

  @override
  State<CategoryChart> createState() => _CategoryChartState();
}

class _CategoryChartState extends State<CategoryChart> {
  int? _touchedIndex;

  static const _palette = [
    AppTheme.accent,
    AppTheme.accentPurple,
    AppTheme.accentCyan,
    AppTheme.yellow,
    AppTheme.green,
    Color(0xFFEC4899),
    Color(0xFF8B5CF6),
    Color(0xFF14B8A6),
  ];

  @override
  Widget build(BuildContext context) {
    final sorted = [...widget.categories]
      ..sort((a, b) => b.amount.compareTo(a.amount));

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
          Text(
            'SPENDING BY CATEGORY',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  letterSpacing: 2,
                ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 130,
                height: 130,
                child: PieChart(
                  PieChartData(
                    sectionsSpace: 2,
                    centerSpaceRadius: 38,
                    pieTouchData: PieTouchData(
                      touchCallback: (event, response) {
                        setState(() {
                          if (response?.touchedSection != null &&
                              event is! FlPointerExitEvent) {
                            _touchedIndex = response!
                                .touchedSection!.touchedSectionIndex;
                          } else {
                            _touchedIndex = null;
                          }
                        });
                      },
                    ),
                    sections: sorted.asMap().entries.map((entry) {
                      final i = entry.key;
                      final cat = entry.value;
                      final isTouched = _touchedIndex == i;
                      final color = _palette[i % _palette.length];

                      return PieChartSectionData(
                        color: color,
                        value: cat.amount,
                        title: isTouched
                            ? '${cat.percentage.toStringAsFixed(0)}%'
                            : '',
                        radius: isTouched ? 32 : 26,
                        titleStyle: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // Legend
              Expanded(
                child: Column(
                  children: sorted.asMap().entries.take(6).map((entry) {
                    final i = entry.key;
                    final cat = entry.value;
                    final color = _palette[i % _palette.length];
                    final catEnum = TransactionCategory.values.firstWhere(
                      (c) => c.name == cat.category,
                      orElse: () => TransactionCategory.other,
                    );

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              catEnum.label,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontSize: 11),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '${cat.percentage.toStringAsFixed(0)}%',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: color,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
