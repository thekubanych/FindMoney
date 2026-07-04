import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/ai_reports/presentation/pages/ai_reports_page.dart';
import '../../features/transactions/presentation/pages/transactions_page.dart';
import '../../features/transactions/presentation/pages/add_transaction_page.dart';
import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/auth/presentation/providers/auth_providers.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/analytics/presentation/pages/analytics_page.dart';
import '../../features/challenges/presentation/pages/challenges_page.dart';
import '../../features/subscriptions/presentation/pages/subscription_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../shared/widgets/main_shell.dart';

part 'app_router.g.dart';

const _protectedPaths = [
  '/dashboard',
  '/transactions',
  '/ai',
  '/analytics',
  '/profile',
  '/challenges',
  '/subscription',
];

// ── FIX: use keepAlive so router is NOT recreated on every auth state change ──
@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  // Use a notifier listener pattern instead of rebuilding GoRouter
  final notifier = _RouterNotifier(ref);

  return GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: false,
    refreshListenable: notifier,
    redirect: (context, state) {
      final authState = ref.read(authNotifierProvider);
      final path = state.uri.path;
      final isProtected = _protectedPaths.any((p) => path.startsWith(p));
      final isAuthPage = path == '/login' || path == '/register';
      final isLoading = authState.status == AuthStatus.initial ||
          authState.status == AuthStatus.loading;

      // Still loading — stay on splash
      if (isLoading) {
        return path == '/splash' ? null : '/splash';
      }

      // Not authed + splash or protected route → login
      if (authState.status == AuthStatus.unauthenticated &&
          (isProtected || path == '/splash')) {
        return '/login';
      }

      // Authed + on auth page → dashboard
      if (authState.status == AuthStatus.authenticated && isAuthPage) {
        return '/dashboard';
      }

      // Authed + on splash → dashboard
      if (authState.status == AuthStatus.authenticated && path == '/splash') {
        return '/dashboard';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SplashPage(),
        ),
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const LoginPage(),
          transitionsBuilder: (context, animation, _, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
      GoRoute(
        path: '/register',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const RegisterPage(),
          transitionsBuilder: (context, animation, _, child) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            )),
            child: child,
          ),
        ),
      ),
      ShellRoute(
        builder: (context, state, child) => MainShell(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: DashboardPage(),
            ),
          ),
          GoRoute(
            path: '/transactions',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: TransactionsPage(),
            ),
          ),
          GoRoute(
            path: '/ai',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: AiReportsPage(),
            ),
          ),
          GoRoute(
            path: '/analytics',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: AnalyticsPage(),
            ),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ProfilePage(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/transactions/add',
        pageBuilder: (context, state) => MaterialPage(
          fullscreenDialog: true,
          child: const AddTransactionPage(),
        ),
      ),
      GoRoute(
        path: '/challenges',
        pageBuilder: (context, state) => const MaterialPage(
          child: ChallengesPage(),
        ),
      ),
      GoRoute(
        path: '/subscription',
        pageBuilder: (context, state) => const MaterialPage(
          fullscreenDialog: true,
          child: SubscriptionPage(),
        ),
      ),
    ],
  );
}

/// Listens to auth state changes and notifies GoRouter to re-evaluate redirects.
/// This way the GoRouter instance is kept alive and only redirects are re-run.
class _RouterNotifier extends ChangeNotifier {
  _RouterNotifier(Ref ref) {
    ref.listen(authNotifierProvider, (_, __) => notifyListeners());
  }
}
