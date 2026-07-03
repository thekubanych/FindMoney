import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/ai_report.dart';
import '../providers/ai_report_providers.dart';
import '../../../../core/theme/app_theme.dart';

class ReportTypeSelector extends ConsumerWidget {
  const ReportTypeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(reportTypeNotifierProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: AiReportType.values.map((type) {
          final isSelected = type == selected;
          final isHardTruth = type == AiReportType.hardTruth;

          return GestureDetector(
            onTap: () =>
                ref.read(reportTypeNotifierProvider.notifier).select(type),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              margin: const EdgeInsets.only(right: 8),
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected
                    ? (isHardTruth
                        ? AppTheme.accent.withOpacity(0.12)
                        : AppTheme.accentCyan.withOpacity(0.1))
                    : AppTheme.surface,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected
                      ? (isHardTruth ? AppTheme.accent : AppTheme.accentCyan)
                      : AppTheme.border,
                  width: isSelected ? 1.5 : 1,
                ),
              ),
              child: Row(
                children: [
                  if (isHardTruth && isSelected)
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Icon(
                        Icons.flash_on_rounded,
                        size: 12,
                        color: AppTheme.accent,
                      ),
                    ),
                  Text(
                    type.label,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: isSelected
                              ? (isHardTruth
                                  ? AppTheme.accent
                                  : AppTheme.accentCyan)
                              : AppTheme.textMuted,
                          letterSpacing: 0.5,
                          fontSize: 11,
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
