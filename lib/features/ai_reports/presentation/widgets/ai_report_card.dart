import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/ai_report.dart';
import '../../../../core/theme/app_theme.dart';

class AiReportCard extends StatelessWidget {
  final AiReport report;

  const AiReportCard({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    final isHardTruth = report.reportType == AiReportType.hardTruth;

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isHardTruth
              ? AppTheme.accent.withOpacity(0.5)
              : AppTheme.border,
          width: isHardTruth ? 1.5 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              color: isHardTruth
                  ? AppTheme.accent.withOpacity(0.08)
                  : AppTheme.surfaceElevated,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Row(
              children: [
                Icon(
                  _reportIcon(report.reportType),
                  size: 16,
                  color: isHardTruth ? AppTheme.accent : AppTheme.accentCyan,
                ),
                const SizedBox(width: 10),
                Text(
                  report.reportType.label.toUpperCase(),
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: isHardTruth
                            ? AppTheme.accent
                            : AppTheme.accentCyan,
                        letterSpacing: 2,
                      ),
                ),
                const Spacer(),
                Text(
                  _formatDate(report.createdAt),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              report.content,
              style: GoogleFonts.spaceGrotesk(
                fontSize: 14,
                height: 1.75,
                color: isHardTruth
                    ? AppTheme.textPrimary
                    : AppTheme.textPrimary.withOpacity(0.9),
                fontWeight:
                    isHardTruth ? FontWeight.w500 : FontWeight.w400,
              ),
            ),
          ),

          // Score strip
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: AppTheme.surfaceElevated,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _MiniScore(
                  label: 'RISK',
                  value: report.riskScore,
                  color: AppTheme.riskColor(report.riskScore),
                ),
                _Divider(),
                _MiniScore(
                  label: 'IMPULSE',
                  value: report.impulsiveScore,
                  color: report.impulsiveScore > 60
                      ? AppTheme.red
                      : AppTheme.yellow,
                ),
                _Divider(),
                _MiniScore(
                  label: 'DISCIPLINE',
                  value: report.disciplineScore,
                  color: report.disciplineScore > 60
                      ? AppTheme.green
                      : AppTheme.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconData _reportIcon(AiReportType type) {
    switch (type) {
      case AiReportType.daily:
        return Icons.today_outlined;
      case AiReportType.weekly:
        return Icons.date_range_outlined;
      case AiReportType.monthly:
        return Icons.calendar_month_outlined;
      case AiReportType.hardTruth:
        return Icons.flash_on_rounded;
    }
  }

  String _formatDate(DateTime dt) {
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return '${months[dt.month - 1]} ${dt.day}, ${dt.year}';
  }
}

class _MiniScore extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  const _MiniScore({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$value',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: 22,
                color: color,
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 32,
      color: AppTheme.border,
    );
  }
}
