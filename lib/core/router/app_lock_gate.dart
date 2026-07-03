import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/profile/presentation/providers/profile_providers.dart';
import '../../features/profile/presentation/pages/app_lock_page.dart';

/// Wraps the app, showing a PIN/biometric lock screen whenever:
/// - biometric lock is enabled in settings, AND
/// - the app was just resumed from the background (or just launched)
class AppLockGate extends ConsumerStatefulWidget {
  final Widget child;

  const AppLockGate({super.key, required this.child});

  @override
  ConsumerState<AppLockGate> createState() => _AppLockGateState();
}

class _AppLockGateState extends ConsumerState<AppLockGate>
    with WidgetsBindingObserver {
  bool _locked = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final biometricEnabled =
        ref.read(biometricLockNotifierProvider).valueOrNull ?? false;
    if (!biometricEnabled) return;

    if (state == AppLifecycleState.paused) {
      setState(() => _locked = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final biometricAsync = ref.watch(biometricLockNotifierProvider);

    return biometricAsync.when(
      data: (enabled) {
        if (enabled && _locked) {
          return AppLockPage(
            onUnlocked: () => setState(() => _locked = false),
          );
        }
        return widget.child;
      },
      loading: () => widget.child,
      error: (_, __) => widget.child,
    );
  }
}
