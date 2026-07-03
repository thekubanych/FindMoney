import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../providers/profile_providers.dart';
import '../widgets/settings_widgets.dart';
import '../widgets/profile_header_card.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../../../core/theme/app_theme.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final hardTruthAsync = ref.watch(hardTruthModeNotifierProvider);
    final biometricAsync = ref.watch(biometricLockNotifierProvider);
    final notificationsAsync = ref.watch(notificationsEnabledNotifierProvider);
    final aiPersonalityAsync = ref.watch(aiPersonalityNotifierProvider);

    if (user == null) {
      return const Scaffold(
        backgroundColor: AppTheme.bg,
        body: Center(child: CircularProgressIndicator(color: AppTheme.accent)),
      );
    }

    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: AppTheme.bg,
            expandedHeight: 80,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
              title: Text(
                'Profile',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
              child: Column(
                children: [
                  ProfileHeaderCard(user: user)
                      .animate()
                      .fadeIn(duration: 300.ms)
                      .slideY(begin: 0.05),

                  const SizedBox(height: 24),

                  // ── AI Behavior settings ──────────────────────────────────
                  SettingsSection(
                    title: 'AI BEHAVIOR',
                    children: [
                      hardTruthAsync.when(
                        data: (enabled) => SettingsToggleRow(
                          icon: Icons.flash_on_rounded,
                          iconColor: AppTheme.accent,
                          title: 'Hard Truth Mode',
                          subtitle: 'Brutally honest AI feedback',
                          value: enabled,
                          onChanged: (v) => ref
                              .read(hardTruthModeNotifierProvider.notifier)
                              .toggle(v),
                        ),
                        loading: () => const _LoadingRow(),
                        error: (_, __) => const SizedBox.shrink(),
                      ),
                      aiPersonalityAsync.when(
                        data: (personality) => SettingsNavRow(
                          icon: Icons.psychology_outlined,
                          iconColor: AppTheme.accentPurple,
                          title: 'AI Personality',
                          trailing: _personalityLabel(personality),
                          onTap: () => _showPersonalitySheet(
                            context,
                            ref,
                            personality,
                          ),
                        ),
                        loading: () => const _LoadingRow(),
                        error: (_, __) => const SizedBox.shrink(),
                      ),
                    ],
                  ).animate().fadeIn(duration: 300.ms, delay: 60.ms),

                  const SizedBox(height: 20),

                  // ── Notifications & security ──────────────────────────────
                  SettingsSection(
                    title: 'NOTIFICATIONS & SECURITY',
                    children: [
                      notificationsAsync.when(
                        data: (enabled) => SettingsToggleRow(
                          icon: Icons.notifications_outlined,
                          title: 'Push Notifications',
                          subtitle: 'Risk alerts & daily reports',
                          value: enabled,
                          onChanged: (v) => ref
                              .read(notificationsEnabledNotifierProvider
                                  .notifier)
                              .toggle(v),
                        ),
                        loading: () => const _LoadingRow(),
                        error: (_, __) => const SizedBox.shrink(),
                      ),
                      biometricAsync.when(
                        data: (enabled) => SettingsToggleRow(
                          icon: Icons.fingerprint_rounded,
                          title: 'Biometric Lock',
                          subtitle: 'Face ID / Fingerprint to open app',
                          value: enabled,
                          onChanged: (v) => ref
                              .read(biometricLockNotifierProvider.notifier)
                              .toggle(v),
                        ),
                        loading: () => const _LoadingRow(),
                        error: (_, __) => const SizedBox.shrink(),
                      ),
                    ],
                  ).animate().fadeIn(duration: 300.ms, delay: 100.ms),

                  const SizedBox(height: 20),

                  // ── Account ────────────────────────────────────────────────
                  SettingsSection(
                    title: 'ACCOUNT',
                    children: [
                      SettingsNavRow(
                        icon: Icons.workspace_premium_outlined,
                        iconColor: AppTheme.yellow,
                        title: 'Subscription',
                        trailing: user.planLabel,
                        onTap: () => context.push('/subscription'),
                      ),
                      SettingsNavRow(
                        icon: Icons.download_outlined,
                        title: 'Export Data',
                        onTap: () => _exportData(context),
                      ),
                      SettingsNavRow(
                        icon: Icons.lock_reset_outlined,
                        title: 'Change Password',
                        onTap: () {},
                      ),
                    ],
                  ).animate().fadeIn(duration: 300.ms, delay: 140.ms),

                  const SizedBox(height: 20),

                  // ── Support ────────────────────────────────────────────────
                  SettingsSection(
                    title: 'SUPPORT',
                    children: [
                      SettingsNavRow(
                        icon: Icons.help_outline_rounded,
                        title: 'Help Center',
                        onTap: () {},
                      ),
                      SettingsNavRow(
                        icon: Icons.privacy_tip_outlined,
                        title: 'Privacy Policy',
                        onTap: () {},
                      ),
                      SettingsNavRow(
                        icon: Icons.description_outlined,
                        title: 'Terms of Service',
                        onTap: () {},
                      ),
                    ],
                  ).animate().fadeIn(duration: 300.ms, delay: 180.ms),

                  const SizedBox(height: 20),

                  // ── Danger zone ────────────────────────────────────────────
                  SettingsSection(
                    title: 'DANGER ZONE',
                    children: [
                      SettingsNavRow(
                        icon: Icons.logout_rounded,
                        title: 'Sign Out',
                        isDestructive: true,
                        onTap: () => _confirmLogout(context, ref),
                      ),
                      SettingsNavRow(
                        icon: Icons.delete_outline_rounded,
                        title: 'Delete Account',
                        isDestructive: true,
                        onTap: () => _confirmDeleteAccount(context),
                      ),
                    ],
                  ).animate().fadeIn(duration: 300.ms, delay: 220.ms),

                  const SizedBox(height: 24),

                  Text(
                    'Anti-Finance v1.0.0',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _personalityLabel(AiPersonality p) {
    switch (p) {
      case AiPersonality.friendly:
        return 'Friendly';
      case AiPersonality.balanced:
        return 'Balanced';
      case AiPersonality.brutal:
        return 'Brutal';
    }
  }

  void _showPersonalitySheet(
    BuildContext context,
    WidgetRef ref,
    AiPersonality current,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AI Personality',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ...AiPersonality.values.map(
              (p) => ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  p == current
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off,
                  color: p == current ? AppTheme.accent : AppTheme.textMuted,
                ),
                title: Text(_personalityLabel(p)),
                subtitle: Text(
                  switch (p) {
                    AiPersonality.friendly => 'Gentle, encouraging tone',
                    AiPersonality.balanced => 'Honest but supportive',
                    AiPersonality.brutal => 'No sugarcoating, ever',
                  },
                  style: const TextStyle(fontSize: 11),
                ),
                onTap: () {
                  ref.read(aiPersonalityNotifierProvider.notifier).set(p);
                  Navigator.pop(ctx);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _exportData(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Preparing your data export...')),
    );
  }

  Future<void> _confirmLogout(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.surface,
        title: const Text('Sign out?'),
        content: const Text('You can sign back in anytime.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Sign Out',
                style: TextStyle(color: AppTheme.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(authNotifierProvider.notifier).logout();
      if (context.mounted) context.go('/login');
    }
  }

  Future<void> _confirmDeleteAccount(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.surface,
        title: const Text('Delete account?'),
        content: const Text(
          'This permanently deletes all your data. This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Delete Forever',
                style: TextStyle(color: AppTheme.red)),
          ),
        ],
      ),
    );
  }
}

class _LoadingRow extends StatelessWidget {
  const _LoadingRow();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SizedBox(
          height: 18,
          width: 18,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: AppTheme.textMuted,
          ),
        ),
      );
}
