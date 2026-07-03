import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../providers/subscription_providers.dart';
import '../widgets/plan_card.dart';
import '../../domain/entities/subscription.dart';
import '../../../../core/theme/app_theme.dart';

class SubscriptionPage extends ConsumerStatefulWidget {
  const SubscriptionPage({super.key});

  @override
  ConsumerState<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends ConsumerState<SubscriptionPage> {
  String? _purchasingPlanId;

  Future<void> _handlePurchase(String planId) async {
    setState(() => _purchasingPlanId = planId);
    try {
      await ref.read(subscriptionNotifierProvider.notifier).purchase(planId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Subscription activated 🎉'),
            backgroundColor: AppTheme.green.withOpacity(0.9),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Purchase failed: ${e.toString()}'),
            backgroundColor: AppTheme.red.withOpacity(0.9),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _purchasingPlanId = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusAsync = ref.watch(subscriptionNotifierProvider);

    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(
        title: const Text('Subscription'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: statusAsync.when(
        data: (status) => ListView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
          children: [
            // Header
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose your plan',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 26,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Unlock deeper AI insights into your financial behavior.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 13,
                      ),
                ),
              ],
            ).animate().fadeIn(duration: 300.ms),

            const SizedBox(height: 8),

            if (status.expiresAt != null && status.planType != 'free')
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppTheme.surfaceElevated,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppTheme.border),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.info_outline,
                          size: 14, color: AppTheme.textMuted),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          status.willRenew == true
                              ? 'Renews ${_fmtDate(status.expiresAt!)}'
                              : 'Expires ${_fmtDate(status.expiresAt!)}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            const SizedBox(height: 28),

            // Plan cards
            ...PlanCatalog.all.asMap().entries.map((entry) {
              final i = entry.key;
              final plan = entry.value;
              final isCurrent = plan.id == status.planType;

              return Padding(
                padding: const EdgeInsets.only(bottom: 24, top: 8),
                child: PlanCard(
                  plan: plan,
                  isCurrent: isCurrent,
                  isLoading: _purchasingPlanId == plan.id,
                  onSelect: () => _handlePurchase(plan.id),
                )
                    .animate()
                    .fadeIn(
                      duration: 350.ms,
                      delay: Duration(milliseconds: 100 + i * 80),
                    )
                    .slideY(begin: 0.06),
              );
            }),

            // Cancel option
            if (status.planType != 'free' && status.status == 'active')
              Center(
                child: TextButton(
                  onPressed: () => _confirmCancel(context),
                  child: Text(
                    'Cancel subscription',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textMuted,
                          fontSize: 12,
                        ),
                  ),
                ),
              ),

            const SizedBox(height: 16),

            Text(
              'Subscriptions auto-renew unless cancelled. Manage anytime in your App Store or Google Play account.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 10,
                    height: 1.6,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: AppTheme.accent,
            strokeWidth: 2,
          ),
        ),
        error: (e, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Failed to load plans',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => ref.refresh(subscriptionNotifierProvider),
                child: const Text('Try again'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _confirmCancel(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.surface,
        title: const Text('Cancel subscription?'),
        content: const Text(
          "You'll keep access until the end of your billing period.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Keep plan'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text(
              'Cancel plan',
              style: TextStyle(color: AppTheme.red),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(subscriptionNotifierProvider.notifier).cancel();
    }
  }

  String _fmtDate(DateTime d) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return '${months[d.month - 1]} ${d.day}, ${d.year}';
  }
}
