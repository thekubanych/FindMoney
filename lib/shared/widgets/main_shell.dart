import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_theme.dart';

class MainShell extends StatelessWidget {
  final Widget child;

  const MainShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: child,
      bottomNavigationBar: _BottomNav(),
    );
  }
}

class _BottomNav extends StatelessWidget {
  static const _tabs = [
    _NavTab(icon: Icons.grid_view_rounded, label: 'Dashboard', path: '/dashboard'),
    _NavTab(icon: Icons.receipt_long_outlined, label: 'Transactions', path: '/transactions'),
    _NavTab(icon: Icons.psychology_rounded, label: 'AI', path: '/ai'),
    _NavTab(icon: Icons.bar_chart_rounded, label: 'Analytics', path: '/analytics'),
    _NavTab(icon: Icons.person_outline_rounded, label: 'Profile', path: '/profile'),
  ];

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.surface,
        border: Border(top: BorderSide(color: AppTheme.border)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 60,
          child: Row(
            children: _tabs.map((tab) {
              final isActive = location.startsWith(tab.path);
              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => context.go(tab.path),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // AI tab gets special treatment
                      if (tab.path == '/ai')
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: isActive
                                ? AppTheme.accent
                                : AppTheme.accent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: isActive
                                  ? AppTheme.accent
                                  : AppTheme.accent.withOpacity(0.3),
                            ),
                          ),
                          child: Icon(
                            tab.icon,
                            size: 18,
                            color: isActive
                                ? Colors.white
                                : AppTheme.accent,
                          ),
                        )
                      else
                        Icon(
                          tab.icon,
                          size: 22,
                          color: isActive
                              ? AppTheme.accent
                              : AppTheme.textMuted,
                        ),
                      const SizedBox(height: 3),
                      Text(
                        tab.label,
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: isActive
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: isActive
                              ? AppTheme.accent
                              : AppTheme.textMuted,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _NavTab {
  final IconData icon;
  final String label;
  final String path;

  const _NavTab({
    required this.icon,
    required this.label,
    required this.path,
  });
}
