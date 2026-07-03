import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../domain/entities/analytics_data.dart';
import '../../../../core/theme/app_theme.dart';

class RiskTimelineChart extends StatelessWidget {
  final RiskTimeline timeline;

  const RiskTimelineChart({super.key, required this.timeline});

  @override
  Widget build(BuildContext context) {
    if (timeline.points.isEmpty) return const SizedBox.shrink();

    final spots = timeline.points.asMap().entries.map((e) {
      return FlSpot(e.key.toDouble(), e.value.riskScore.toDouble());
    }).toList();

    final trendColor = timeline.trend == 'improving'
        ? AppTheme.green
        : timeline.trend == 'worsening'
            ? AppTheme.red
            : AppTheme.yellow;

    final trendIcon = timeline.trend == 'improving'
        ? Icons.trending_down_rounded // lower risk = good
        : timeline.trend == 'worsening'
            ? Icons.trending_up_rounded
            : Icons.trending_flat_rounded;

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
                'RISK TREND',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      letterSpacing: 2,
                    ),
              ),
              Row(
                children: [
                  Icon(trendIcon, size: 14, color: trendColor),
                  const SizedBox(width: 4),
                  Text(
                    timeline.trend.toUpperCase(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: trendColor,
                          fontSize: 10,
                        ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: LineChart(
              LineChartData(
                minY: 0,
                maxY: 100,
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 25,
                  getDrawingHorizontalLine: (_) =>
                      const FlLine(color: AppTheme.border, strokeWidth: 1),
                ),
                titlesData: const FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: spots,
                    isCurved: true,
                    color: trendColor,
                    barWidth: 2,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          trendColor.withOpacity(0.15),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PeerComparisonCard extends StatelessWidget {
  final PeerComparison comparison;

  const PeerComparisonCard({super.key, required this.comparison});

  @override
  Widget build(BuildContext context) {
    final youSaveMore =
        comparison.yourSavingsRate >= comparison.peerAvgSavingsRate;
    final youImpulseLess =
        comparison.yourImpulsiveSpending <= comparison.peerAvgImpulsiveSpending;

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
                'VS PEOPLE YOUR AGE',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      letterSpacing: 2,
                    ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppTheme.accentCyan.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  comparison.ageGroup,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppTheme.accentCyan,
                        fontSize: 9,
                      ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          Text(
            'Top ${comparison.percentileRank}% in financial discipline',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
          ),

          const SizedBox(height: 20),

          _CompareRow(
            label: 'Savings Rate',
            youValue: comparison.yourSavingsRate,
            peerValue: comparison.peerAvgSavingsRate,
            isGood: youSaveMore,
            isPercent: true,
          ),
          const SizedBox(height: 16),
          _CompareRow(
            label: 'Impulsive Spending',
            youValue: comparison.yourImpulsiveSpending,
            peerValue: comparison.peerAvgImpulsiveSpending,
            isGood: youImpulseLess,
            isPercent: false,
          ),
        ],
      ),
    );
  }
}

class _CompareRow extends StatelessWidget {
  final String label;
  final double youValue;
  final double peerValue;
  final bool isGood;
  final bool isPercent;

  const _CompareRow({
    required this.label,
    required this.youValue,
    required this.peerValue,
    required this.isGood,
    required this.isPercent,
  });

  @override
  Widget build(BuildContext context) {
    final maxVal = youValue > peerValue ? youValue : peerValue;
    final youRatio = maxVal > 0 ? youValue / maxVal : 0.0;
    final peerRatio = maxVal > 0 ? peerValue / maxVal : 0.0;
    final color = isGood ? AppTheme.green : AppTheme.yellow;

    String fmt(double v) =>
        isPercent ? '${v.toStringAsFixed(0)}%' : '\$${v.toStringAsFixed(0)}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 12,
                color: AppTheme.textPrimary,
              ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            SizedBox(
              width: 36,
              child: Text(
                'You',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: LinearProgressIndicator(
                  value: youRatio,
                  backgroundColor: AppTheme.border,
                  valueColor: AlwaysStoppedAnimation(color),
                  minHeight: 8,
                ),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 50,
              child: Text(
                fmt(youValue),
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: color,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            SizedBox(
              width: 36,
              child: Text(
                'Peers',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: LinearProgressIndicator(
                  value: peerRatio,
                  backgroundColor: AppTheme.border,
                  valueColor:
                      const AlwaysStoppedAnimation(AppTheme.textMuted),
                  minHeight: 8,
                ),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 50,
              child: Text(
                fmt(peerValue),
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
