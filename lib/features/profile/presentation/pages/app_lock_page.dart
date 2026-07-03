import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:local_auth/local_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/theme/app_theme.dart';

part 'app_lock_page.g.dart';

// ─── Lock state provider ─────────────────────────────────────────────────────

@riverpod
class AppLockNotifier extends _$AppLockNotifier {
  @override
  bool build() => false; // unlocked by default; gated via biometric setting

  void lock() => state = false;
  void unlock() => state = true;
}

// ─── Lock screen UI ───────────────────────────────────────────────────────────

class AppLockPage extends ConsumerStatefulWidget {
  final VoidCallback onUnlocked;

  const AppLockPage({super.key, required this.onUnlocked});

  @override
  ConsumerState<AppLockPage> createState() => _AppLockPageState();
}

class _AppLockPageState extends ConsumerState<AppLockPage> {
  final LocalAuthentication _auth = LocalAuthentication();
  String _pin = '';
  String? _error;
  bool _isAuthenticating = false;

  static const _correctPinLength = 4;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _tryBiometric());
  }

  Future<void> _tryBiometric() async {
    try {
      final canCheck = await _auth.canCheckBiometrics;
      final isSupported = await _auth.isDeviceSupported();
      if (!canCheck || !isSupported) return;

      setState(() => _isAuthenticating = true);
      final didAuth = await _auth.authenticate(
        localizedReason: 'Unlock Anti-Finance',
        options: const AuthenticationOptions(
          biometricOnly: false,
          stickyAuth: true,
        ),
      );
      setState(() => _isAuthenticating = false);

      if (didAuth) {
        widget.onUnlocked();
      }
    } catch (_) {
      setState(() => _isAuthenticating = false);
    }
  }

  void _onDigit(String digit) {
    if (_pin.length >= _correctPinLength) return;
    setState(() {
      _pin += digit;
      _error = null;
    });

    if (_pin.length == _correctPinLength) {
      _validatePin();
    }
  }

  void _onBackspace() {
    if (_pin.isEmpty) return;
    setState(() => _pin = _pin.substring(0, _pin.length - 1));
  }

  void _validatePin() {
    // In production, verify against securely stored PIN hash
    // For now, accept any 4-digit PIN as a placeholder for the flow
    HapticFeedback.lightImpact();
    widget.onUnlocked();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),

            // Logo
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: AppTheme.surface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppTheme.accent.withOpacity(0.4)),
              ),
              child: const Center(
                child: Text(
                  '¬\$',
                  style: TextStyle(
                    color: AppTheme.accent,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ).animate().scale(
                  begin: const Offset(0.8, 0.8),
                  duration: 400.ms,
                  curve: Curves.easeOutBack,
                ),

            const SizedBox(height: 24),

            Text(
              'Enter PIN',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Unlock to view your finances',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 32),

            // PIN dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_correctPinLength, (i) {
                final filled = i < _pin.length;
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: filled ? AppTheme.accent : Colors.transparent,
                    border: Border.all(
                      color: filled ? AppTheme.accent : AppTheme.border,
                      width: 1.5,
                    ),
                  ),
                )
                    .animate(target: filled ? 1 : 0)
                    .scale(
                      begin: const Offset(0.6, 0.6),
                      end: const Offset(1.0, 1.0),
                      duration: 150.ms,
                    );
              }),
            ),

            if (_error != null)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  _error!,
                  style: const TextStyle(color: AppTheme.red, fontSize: 12),
                ),
              ),

            const Spacer(flex: 1),

            // Numpad
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  _NumpadRow(digits: const ['1', '2', '3'], onTap: _onDigit),
                  const SizedBox(height: 16),
                  _NumpadRow(digits: const ['4', '5', '6'], onTap: _onDigit),
                  const SizedBox(height: 16),
                  _NumpadRow(digits: const ['7', '8', '9'], onTap: _onDigit),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _isAuthenticating ? null : _tryBiometric,
                        child: SizedBox(
                          width: 64,
                          height: 64,
                          child: Icon(
                            Icons.fingerprint_rounded,
                            color: _isAuthenticating
                                ? AppTheme.accent
                                : AppTheme.textMuted,
                            size: 26,
                          ),
                        ),
                      ),
                      _NumpadButton(digit: '0', onTap: _onDigit),
                      GestureDetector(
                        onTap: _onBackspace,
                        child: const SizedBox(
                          width: 64,
                          height: 64,
                          child: Icon(
                            Icons.backspace_outlined,
                            color: AppTheme.textMuted,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

class _NumpadRow extends StatelessWidget {
  final List<String> digits;
  final ValueChanged<String> onTap;

  const _NumpadRow({required this.digits, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
          digits.map((d) => _NumpadButton(digit: d, onTap: onTap)).toList(),
    );
  }
}

class _NumpadButton extends StatelessWidget {
  final String digit;
  final ValueChanged<String> onTap;

  const _NumpadButton({required this.digit, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();
        onTap(digit);
      },
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppTheme.surface,
          border: Border.all(color: AppTheme.border),
        ),
        child: Center(
          child: Text(
            digit,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 22,
                ),
          ),
        ),
      ),
    );
  }
}
