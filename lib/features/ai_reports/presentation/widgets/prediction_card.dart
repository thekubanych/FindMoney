import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../domain/entities/ai_report.dart';
import '../../../../core/theme/app_theme.dart';

class PredictionCard extends StatelessWidget {
  final AiPrediction prediction;

  const PredictionCard({super.key, required this.prediction});

  @override
  Widget build(BuildContext context) {
    final depletion = prediction.monthsUntilDepletion;
    final debtRisk = prediction.debtProbability;
    final depletionColor = depletion <= 2
        ? AppTheme.red
        : depletion <= 4
            ? AppTheme.yellow
            : AppTheme.green;

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: depletion <= 2
              ? AppTheme.red.withOpacity(0.4)
              : AppTheme.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Row(
              children: [
                Icon(
                  Icons.trending_down_rounded,
                  size: 16,
                  color: depletionColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'FINANCIAL FORECAST',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: depletionColor,
                        letterSpacing: 2,
                      ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Big depletion stat
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$depletion',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: 56,
                        color: depletionColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -2,
                        height: 1,
                      ),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    depletion == 1 ? 'month\nleft' : 'months\nleft',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 13,
                          height: 1.3,
                        ),
                  ),
                ),
                const Spacer(),
                // Debt risk
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${(debtRisk * 100).toInt()}%',
                      style:
                          Theme.of(context).textTheme.displaySmall?.copyWith(
                                fontSize: 28,
                                color: debtRisk > 0.6
                                    ? AppTheme.red
                                    : AppTheme.yellow,
                                fontWeight: FontWeight.w700,
                              ),
                    ),
                    Text(
                      'debt risk',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Mini forecast chart
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: _ForecastChart(
                monthsLeft: depletion,
                debtProbability: debtRisk,
              ),
            ),
          ),

          // Summary text
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppTheme.surfaceElevated,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppTheme.border),
            ),
            child: Text(
              prediction.predictionSummary,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 12,
                    height: 1.6,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ForecastChart extends StatelessWidget {
  final int monthsLeft;
  final double debtProbability;

  const _ForecastChart({
    required this.monthsLeft,
    required this.debtProbability,
  });

  @override
  Widget build(BuildContext context) {
    // Generate projected savings curve (simulated decline)
    final spots = List.generate(7, (i) {
      final decline = i / 6;
      final value = 100.0 * (1 - (decline * (6 / monthsLeft.clamp(1, 12))));
      return FlSpot(i.toDouble(), value.clamp(0, 100));
    });

    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: 6,
        minY: 0,
        maxY: 100,
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            color: monthsLeft <= 2 ? AppTheme.red : AppTheme.accentCyan,
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  (monthsLeft <= 2 ? AppTheme.red : AppTheme.accentCyan)
                      .withOpacity(0.2),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
