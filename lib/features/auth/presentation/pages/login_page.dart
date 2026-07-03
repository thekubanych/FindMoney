import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_providers.dart';
import '../widgets/auth_widgets.dart';
import '../../../../core/theme/app_theme.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _emailError;
  String? _passwordError;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  bool _validate() {
    bool valid = true;
    setState(() {
      _emailError = null;
      _passwordError = null;

      if (_emailCtrl.text.trim().isEmpty) {
        _emailError = 'Enter your email';
        valid = false;
      } else if (!_emailCtrl.text.contains('@')) {
        _emailError = 'Enter a valid email';
        valid = false;
      }

      if (_passwordCtrl.text.isEmpty) {
        _passwordError = 'Enter your password';
        valid = false;
      } else if (_passwordCtrl.text.length < 6) {
        _passwordError = 'At least 6 characters';
        valid = false;
      }
    });
    return valid;
  }

  Future<void> _submit() async {
    if (!_validate()) return;
    await ref.read(authNotifierProvider.notifier).login(
          email: _emailCtrl.text.trim(),
          password: _passwordCtrl.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final isLoading = authState.isLoading;

    // Navigate on success
    ref.listen<AuthState>(authNotifierProvider, (_, next) {
      if (next.status == AuthStatus.authenticated) {
        context.go('/dashboard');
      }
    });

    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: Stack(
        children: [
          // Background accent glow
          Positioned(
            top: -200,
            right: -200,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppTheme.accent.withOpacity(0.08),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 48, 24, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Logo ──────────────────────────────────────────────────
                  GestureDetector(
                    onTap: () => context.go('/splash'),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppTheme.surface,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppTheme.accent.withOpacity(0.3),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '¬\$',
                          style: TextStyle(
                            color: AppTheme.accent,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // ── Header ────────────────────────────────────────────────
                  const AuthHeader(
                    eyebrow: 'WELCOME BACK',
                    title: 'Sign in to\nyour account',
                    subtitle: 'Face your financial reality.',
                  ),

                  const SizedBox(height: 40),

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
                      .fadeIn(duration: 300.ms, delay: 250.ms),
                  const SizedBox(height: 20),

                  // ── Email field ───────────────────────────────────────────
                  AuthTextField(
                    label: 'EMAIL',
                    hint: 'you@example.com',
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.mail_outline_rounded,
                    errorText: _emailError,
                    textInputAction: TextInputAction.next,
                    onChanged: (_) =>
                        setState(() => _emailError = null),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 300.ms),

                  const SizedBox(height: 20),

                  // ── Password field ────────────────────────────────────────
                  AuthTextField(
                    label: 'PASSWORD',
                    hint: '••••••••',
                    controller: _passwordCtrl,
                    isPassword: true,
                    prefixIcon: Icons.lock_outline_rounded,
                    errorText: _passwordError,
                    textInputAction: TextInputAction.done,
                    onSubmitted: _submit,
                    onChanged: (_) =>
                        setState(() => _passwordError = null),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 350.ms),

                  // ── Forgot password ───────────────────────────────────────
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style:
                            Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontSize: 12,
                                  color: AppTheme.textMuted,
                                ),
                      ),
                    ),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 380.ms),

                  const SizedBox(height: 8),

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
                        : const Text('Sign In'),
                  )
                      .animate()
                      .fadeIn(duration: 300.ms, delay: 400.ms),

                  const SizedBox(height: 32),

                  // ── Register link ─────────────────────────────────────────
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 13,
                                  ),
                        ),
                        GestureDetector(
                          onTap: () => context.go('/register'),
                          child: Text(
                            'Sign Up',
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
                      .fadeIn(duration: 300.ms, delay: 450.ms),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
