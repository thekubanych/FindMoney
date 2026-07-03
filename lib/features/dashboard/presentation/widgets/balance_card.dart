import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/dashboard_data.dart';
import '../../../../core/theme/app_theme.dart';

class BalanceCard extends StatelessWidget {
  final DashboardData data;

  const BalanceCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final fmt = NumberFormat('#,##0.00', 'en_US');
    final isPositive = data.currentBalance >= 0;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.border),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.surface,
            AppTheme.accent.withOpacity(0.04),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label
          Text(
            'CURRENT BALANCE',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  letterSpacing: 2,
                  color: AppTheme.textMuted,
                ),
          ),

          const SizedBox(height: 10),

          // Balance amount
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppTheme.textMuted,
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
              ),
              const SizedBox(width: 4),
              Text(
                fmt.format(data.currentBalance.abs()),
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: isPositive ? AppTheme.textPrimary : AppTheme.red,
                      letterSpacing: -2,
                      height: 1,
                    ),
              )
                  .animate()
                  .fadeIn(duration: 500.ms)
                  .slideY(begin: 0.15, curve: Curves.easeOut),
            ],
          ),

          const SizedBox(height: 4),

          // Month label
          Text(
            DateFormat('MMMM yyyy').format(DateTime.now()),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 12,
                ),
          ),

          const SizedBox(height: 24),
          const Divider(color: AppTheme.border, height: 1),
          const SizedBox(height: 20),

          // Income / Expenses row
          Row(
            children: [
              Expanded(
                child: _StatItem(
                  label: 'INCOME',
                  value: data.monthlyIncome,
                  color: AppTheme.green,
                  icon: Icons.arrow_downward_rounded,
                ),
              ),
              Container(width: 1, height: 36, color: AppTheme.border),
              Expanded(
                child: _StatItem(
                  label: 'EXPENSES',
                  value: data.monthlyExpenses,
                  color: AppTheme.red,
                  icon: Icons.arrow_upward_rounded,
                ),
              ),
              Container(width: 1, height: 36, color: AppTheme.border),
              Expanded(
                child: _StatItem(
                  label: 'SAVED',
                  value: data.savingsRate,
                  color: AppTheme.accentCyan,
                  isPercent: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final double value;
  final Color color;
  final IconData? icon;
  final bool isPercent;

  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
    this.icon,
    this.isPercent = false,
  });

  @override
  Widget build(BuildContext context) {
    final display = isPercent
        ? '${value.toStringAsFixed(0)}%'
        : '\$${NumberFormat('#,##0', 'en_US').format(value)}';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null)
                Icon(icon, size: 12, color: color),
              if (icon != null) const SizedBox(width: 4),
              Text(
                label,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 9,
                      letterSpacing: 1,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            display,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: color,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    );
  }
}
