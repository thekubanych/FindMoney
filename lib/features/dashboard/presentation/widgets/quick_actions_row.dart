import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_theme.dart';

class QuickActionsRow extends StatelessWidget {
  const QuickActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _QuickAction(
          icon: Icons.add_rounded,
          label: 'Add',
          color: AppTheme.accent,
          onTap: () => context.push('/transactions/add'),
        ),
        const SizedBox(width: 10),
        _QuickAction(
          icon: Icons.psychology_rounded,
          label: 'AI Report',
          color: AppTheme.accentPurple,
          onTap: () => context.go('/ai'),
        ),
        const SizedBox(width: 10),
        _QuickAction(
          icon: Icons.bar_chart_rounded,
          label: 'Analytics',
          color: AppTheme.accentCyan,
          onTap: () => context.go('/analytics'),
        ),
        const SizedBox(width: 10),
        _QuickAction(
          icon: Icons.emoji_events_outlined,
          label: 'Challenges',
          color: AppTheme.yellow,
          onTap: () => context.push('/challenges'),
        ),
      ],
    );
  }
}

class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _QuickAction({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: color.withOpacity(0.08),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withOpacity(0.2)),
          ),
          child: Column(
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(height: 6),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 10,
                      color: color,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
