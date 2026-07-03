import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../domain/entities/subscription.dart';
import '../../../../core/theme/app_theme.dart';

class PlanCard extends StatelessWidget {
  final PlanOption plan;
  final bool isCurrent;
  final bool isLoading;
  final VoidCallback onSelect;

  const PlanCard({
    super.key,
    required this.plan,
    required this.isCurrent,
    required this.isLoading,
    required this.onSelect,
  });

  Color get _planColor {
    switch (plan.id) {
      case 'pro':
        return AppTheme.accentPurple;
      case 'premium':
        return AppTheme.accent;
      default:
        return AppTheme.textMuted;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _planColor;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: AppTheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: plan.isPopular ? color : AppTheme.border,
              width: plan.isPopular ? 1.5 : 1,
            ),
            gradient: plan.isPopular
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      color.withOpacity(0.06),
                      AppTheme.surface,
                    ],
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    plan.name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: color,
                          letterSpacing: 1.5,
                          fontSize: 14,
                        ),
                  ),
                  if (isCurrent)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppTheme.green.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'CURRENT',
                        style:
                            Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: AppTheme.green,
                                  fontSize: 9,
                                ),
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 18,
                          color: AppTheme.textMuted,
                        ),
                  ),
                  Text(
                    plan.monthlyPrice == 0
                        ? '0'
                        : plan.monthlyPrice.toStringAsFixed(2),
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontSize: 36,
                          letterSpacing: -1.5,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      '/month',
                      style:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 12,
                              ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              ...plan.features.map(
                (f) => Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: Row(
                    children: [
                      Icon(Icons.check_rounded, size: 15, color: color),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          f,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 12,
                                    color: AppTheme.textPrimary,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 8),

              if (!isCurrent)
                GestureDetector(
                  onTap: isLoading ? null : onSelect,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    decoration: BoxDecoration(
                      color: plan.monthlyPrice == 0
                          ? Colors.transparent
                          : color,
                      borderRadius: BorderRadius.circular(8),
                      border: plan.monthlyPrice == 0
                          ? Border.all(color: AppTheme.border)
                          : null,
                    ),
                    child: isLoading
                        ? const Center(
                            child: SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Text(
                            plan.monthlyPrice == 0
                                ? 'Downgrade'
                                : 'Choose ${plan.name}',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontSize: 13,
                                  color: plan.monthlyPrice == 0
                                      ? AppTheme.textMuted
                                      : Colors.white,
                                ),
                          ),
                  ),
                ),
            ],
          ),
        ),

        if (plan.isPopular)
          Positioned(
            top: -10,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'MOST POPULAR',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                        fontSize: 9,
                        letterSpacing: 1,
                      ),
                ),
              ),
            )
                .animate()
                .fadeIn(duration: 300.ms)
                .scale(begin: const Offset(0.8, 0.8)),
          ),
      ],
    );
  }
}
