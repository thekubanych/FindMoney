import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../domain/entities/dashboard_data.dart';
import '../../../../core/theme/app_theme.dart';

class WeeklySpendingChart extends StatefulWidget {
  final List<SpendingPoint> points;

  const WeeklySpendingChart({super.key, required this.points});

  @override
  State<WeeklySpendingChart> createState() => _WeeklySpendingChartState();
}

class _WeeklySpendingChartState extends State<WeeklySpendingChart> {
  int? _touchedIndex;

  @override
  Widget build(BuildContext context) {
    final maxVal = widget.points
            .map((p) => p.amount)
            .fold<double>(0, (a, b) => a > b ? a : b) *
        1.2;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
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
                'WEEKLY SPENDING',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      letterSpacing: 2,
                    ),
              ),
              // Legend
              Row(
                children: [
                  _LegendDot(color: AppTheme.accentCyan, label: 'Normal'),
                  const SizedBox(width: 12),
                  _LegendDot(color: AppTheme.red, label: 'Impulse'),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24),

          SizedBox(
            height: 140,
            child: BarChart(
              BarChartData(
                maxY: maxVal,
                barTouchData: BarTouchData(
                  touchCallback: (event, response) {
                    setState(() {
                      if (response?.spot != null &&
                          event is! FlPointerExitEvent) {
                        _touchedIndex =
                            response!.spot!.touchedBarGroupIndex;
                      } else {
                        _touchedIndex = null;
                      }
                    });
                  },
                  touchTooltipData: BarTouchTooltipData(
                    tooltipRoundedRadius: 6,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      final p = widget.points[groupIndex];
                      return BarTooltipItem(
                        '\$${p.amount.toStringAsFixed(0)}',
                        const TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    },
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final i = value.toInt();
                        if (i >= widget.points.length) {
                          return const SizedBox.shrink();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            widget.points[i].day,
                            style: const TextStyle(
                              color: AppTheme.textMuted,
                              fontSize: 10,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: AppTheme.border,
                    strokeWidth: 1,
                  ),
                ),
                barGroups: widget.points.asMap().entries.map((entry) {
                  final i = entry.key;
                  final p = entry.value;
                  final isTouched = _touchedIndex == i;
                  final normalAmount = p.amount - p.impulsive;

                  return BarChartGroupData(
                    x: i,
                    barRods: [
                      BarChartRodData(
                        toY: p.amount,
                        width: isTouched ? 22 : 18,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(4),
                        ),
                        rodStackItems: [
                          BarChartRodStackItem(
                            0,
                            normalAmount,
                            AppTheme.accentCyan.withOpacity(
                                isTouched ? 1.0 : 0.7),
                          ),
                          BarChartRodStackItem(
                            normalAmount,
                            p.amount,
                            AppTheme.red.withOpacity(
                                isTouched ? 1.0 : 0.7),
                          ),
                        ],
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LegendDot extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendDot({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            color: AppTheme.textMuted,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
