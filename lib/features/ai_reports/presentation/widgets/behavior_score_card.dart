import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../domain/entities/ai_report.dart';
import '../../../../core/theme/app_theme.dart';

class BehaviorScoreCard extends StatelessWidget {
  final BehaviorScore score;

  const BehaviorScoreCard({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BEHAVIOR SCORES',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      letterSpacing: 2,
                    ),
              ),
              _RiskBadge(riskScore: score.riskScore.toInt()),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 120,
                  child: _RadarChart(score: score),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ScoreRow(
                      label: 'Impulse',
                      value: score.impulsiveScore,
                      color: AppTheme.red,
                      invert: true,
                    ),
                    const SizedBox(height: 10),
                    _ScoreRow(
                      label: 'Discipline',
                      value: score.disciplineScore,
                      color: AppTheme.green,
                    ),
                    const SizedBox(height: 10),
                    _ScoreRow(
                      label: 'Emotional',
                      value: score.emotionalDependencyScore,
                      color: AppTheme.accentPurple,
                      invert: true,
                    ),
                    const SizedBox(height: 10),
                    _ScoreRow(
                      label: 'Savings',
                      value: score.savingsHealthScore,
                      color: AppTheme.accentCyan,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ScoreRow extends StatelessWidget {
  final String label;
  final double value;
  final Color color;
  final bool invert;

  const _ScoreRow({
    required this.label,
    required this.value,
    required this.color,
    this.invert = false,
  });

  @override
  Widget build(BuildContext context) {
    // Invert means lower is better (impulse, emotional dependency)
    final displayColor = invert
        ? (value > 60 ? AppTheme.red : value > 30 ? AppTheme.yellow : AppTheme.green)
        : (value < 30 ? AppTheme.red : value < 60 ? AppTheme.yellow : AppTheme.green);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 11,
                  ),
            ),
            Text(
              '${value.toInt()}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 13,
                    color: displayColor,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: LinearProgressIndicator(
            value: value / 100,
            backgroundColor: AppTheme.border,
            valueColor: AlwaysStoppedAnimation(displayColor),
            minHeight: 3,
          ),
        ),
      ],
    );
  }
}

class _RiskBadge extends StatelessWidget {
  final int riskScore;

  const _RiskBadge({required this.riskScore});

  @override
  Widget build(BuildContext context) {
    final color = AppTheme.riskColor(riskScore);
    final label = riskScore < 30
        ? 'LOW RISK'
        : riskScore < 60
            ? 'MEDIUM'
            : 'HIGH RISK';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withOpacity(0.4)),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              letterSpacing: 1.5,
            ),
      ),
    );
  }
}

class _RadarChart extends StatelessWidget {
  final BehaviorScore score;

  const _RadarChart({required this.score});

  @override
  Widget build(BuildContext context) {
    return RadarChart(
      RadarChartData(
        radarShape: RadarShape.polygon,
        tickCount: 4,
        ticksTextStyle: const TextStyle(color: Colors.transparent, fontSize: 0),
        radarBorderData: const BorderSide(color: AppTheme.border, width: 1),
        gridBorderData: const BorderSide(color: AppTheme.border, width: 0.5),
        titleTextStyle: const TextStyle(
          color: AppTheme.textMuted,
          fontSize: 9,
        ),
        titlePositionPercentageOffset: 0.15,
        dataSets: [
          RadarDataSet(
            fillColor: AppTheme.accent.withOpacity(0.15),
            borderColor: AppTheme.accent,
            borderWidth: 1.5,
            entryRadius: 3,
            dataEntries: [
              RadarEntry(value: 100 - score.impulsiveScore),
              RadarEntry(value: score.disciplineScore),
              RadarEntry(value: score.savingsHealthScore),
              RadarEntry(value: 100 - score.emotionalDependencyScore),
            ],
          ),
        ],
        getTitle: (index, angle) {
          const titles = ['Impulse', 'Discipline', 'Savings', 'Emotional'];
          return RadarChartTitle(text: titles[index], angle: angle);
        },
      ),
    );
  }
}
