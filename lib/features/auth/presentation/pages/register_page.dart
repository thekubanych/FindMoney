import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_providers.dart';
import '../widgets/auth_widgets.dart';
import '../../../../core/theme/app_theme.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  String? _nameError;
  String? _emailError;
  String? _passwordError;
  String? _confirmError;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  bool _validate() {
    bool valid = true;
    setState(() {
      _nameError = null;
      _emailError = null;
      _passwordError = null;
      _confirmError = null;

      if (_nameCtrl.text.trim().isEmpty) {
        _nameError = 'Enter your name';
        valid = false;
      } else if (_nameCtrl.text.trim().length < 2) {
        _nameError = 'At least 2 characters';
        valid = false;
      }

      if (_emailCtrl.text.trim().isEmpty) {
        _emailError = 'Enter your email';
        valid = false;
      } else if (!_emailCtrl.text.contains('@')) {
        _emailError = 'Enter a valid email';
        valid = false;
      }

      if (_passwordCtrl.text.isEmpty) {
        _passwordError = 'Enter a password';
        valid = false;
      } else if (_passwordCtrl.text.length < 8) {
        _passwordError = 'At least 8 characters';
        valid = false;
      }

      if (_confirmCtrl.text != _passwordCtrl.text) {
        _confirmError = "Passwords don't match";
        valid = false;
      }
    });
    return valid;
  }

  Future<void> _submit() async {
    if (!_validate()) return;
    await ref.read(authNotifierProvider.notifier).register(
          email: _emailCtrl.text.trim(),
          password: _passwordCtrl.text,
          name: _nameCtrl.text.trim(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final isLoading = authState.isLoading;

    ref.listen<AuthState>(authNotifierProvider, (_, next) {
      if (next.status == AuthStatus.authenticated) {
        context.go('/dashboard');
      }
    });

    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: Stack(
        children: [
          // Subtle accent glow top-left
          Positioned(
            top: -150,
            left: -150,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppTheme.accentPurple.withOpacity(0.08),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Back button ───────────────────────────────────────────
                  GestureDetector(
                    onTap: () => context.go('/login'),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppTheme.surface,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppTheme.border),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: AppTheme.textMuted,
                      ),
                    ),
                  ),

                  const SizedBox(height: 36),

                  // ── Header ────────────────────────────────────────────────
                  const AuthHeader(
                    eyebrow: 'GET STARTED',
                    title: 'Create your\naccount',
                    subtitle: 'Free forever. No credit card required.',
                  ),

                  const SizedBox(height: 36),

                  // ── What you get box ──────────────────────────────────────
                  _WhatYouGetBox()
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 150.ms),

                  const SizedBox(height: 28),

                  // ── Error banner ──────────────────────────────────────────
                  if (authState.error != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: AuthErrorBanner(
                        message: authState.error!,
                        onDismiss: () =>
                            ref.read(authNotifierProvider.notifier).clearError(),
                      ),
                    ),

                  // ── Google button ─────────────────────────────────────────
                  GoogleSignInButton(
                    onTap: () =>
                        ref.read(authNotifierProvider.notifier).loginWithGoogle(),
                    isLoading: isLoading,
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 200.ms),

                  const SizedBox(height: 20),
                  const OrDivider()
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 240.ms),
                  const SizedBox(height: 20),

                  // ── Name field ────────────────────────────────────────────
                  AuthTextField(
                    label: 'YOUR NAME',
                    hint: 'Alex',
                    controller: _nameCtrl,
                    prefixIcon: Icons.person_outline_rounded,
                    errorText: _nameError,
                    textInputAction: TextInputAction.next,
                    onChanged: (_) => setState(() => _nameError = null),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 280.ms),

                  const SizedBox(height: 18),

                  // ── Email field ───────────────────────────────────────────
                  AuthTextField(
                    label: 'EMAIL',
                    hint: 'you@example.com',
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.mail_outline_rounded,
                    errorText: _emailError,
                    textInputAction: TextInputAction.next,
                    onChanged: (_) => setState(() => _emailError = null),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 320.ms),

                  const SizedBox(height: 18),

                  // ── Password field ────────────────────────────────────────
                  AuthTextField(
                    label: 'PASSWORD',
                    hint: '••••••••',
                    controller: _passwordCtrl,
                    isPassword: true,
                    prefixIcon: Icons.lock_outline_rounded,
                    errorText: _passwordError,
                    textInputAction: TextInputAction.next,
                    onChanged: (_) => setState(() => _passwordError = null),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 360.ms),

                  const SizedBox(height: 18),

                  // ── Confirm password ──────────────────────────────────────
                  AuthTextField(
                    label: 'CONFIRM PASSWORD',
                    hint: '••••••••',
                    controller: _confirmCtrl,
                    isPassword: true,
                    prefixIcon: Icons.lock_outline_rounded,
                    errorText: _confirmError,
                    textInputAction: TextInputAction.done,
                    onSubmitted: _submit,
                    onChanged: (_) => setState(() => _confirmError = null),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 400.ms),

                  const SizedBox(height: 28),

                  // ── Terms notice ──────────────────────────────────────────
                  Text(
                    'By signing up you agree to our Terms of Service and Privacy Policy.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 11,
                          height: 1.5,
                        ),
                    textAlign: TextAlign.center,
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 420.ms),

                  const SizedBox(height: 16),

                  // ── Submit button ─────────────────────────────────────────
                  ElevatedButton(
                    onPressed: isLoading ? null : _submit,
                    child: isLoading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Text('Create Account'),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 440.ms),

                  const SizedBox(height: 24),

                  // ── Login link ────────────────────────────────────────────
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 13,
                                  ),
                        ),
                        GestureDetector(
                          onTap: () => context.go('/login'),
                          child: Text(
                            'Sign In',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 13,
                                  color: AppTheme.accent,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 480.ms),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── "What you get" promo box ─────────────────────────────────────────────────

class _WhatYouGetBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const perks = [
      (Icons.psychology_outlined, 'AI behavioral analysis'),
      (Icons.warning_amber_outlined, 'Impulse spending detection'),
      (Icons.trending_down_rounded, 'Financial risk predictions'),
      (Icons.emoji_events_outlined, 'Gamified discipline system'),
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppTheme.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FREE PLAN INCLUDES',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  letterSpacing: 2,
                  color: AppTheme.accentCyan,
                ),
          ),
          const SizedBox(height: 12),
          ...perks.map(
            (p) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(p.$1, size: 15, color: AppTheme.accentCyan),
                  const SizedBox(width: 10),
                  Text(
                    p.$2,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 13,
                          color: AppTheme.textPrimary,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
