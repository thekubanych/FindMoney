import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../auth/domain/entities/user.dart';
import '../../../../core/theme/app_theme.dart';

class ProfileHeaderCard extends StatelessWidget {
  final User user;

  const ProfileHeaderCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final planColor = user.isPro
        ? AppTheme.accentPurple
        : user.isPremium
            ? AppTheme.accentCyan
            : AppTheme.textMuted;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.border),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: AppTheme.surfaceElevated,
              shape: BoxShape.circle,
              border: Border.all(color: planColor.withOpacity(0.4), width: 1.5),
            ),
            child: user.avatarUrl != null
                ? ClipOval(
                    child: Image.network(user.avatarUrl!, fit: BoxFit.cover),
                  )
                : Center(
                    child: Text(
                      user.name.isNotEmpty ? user.name[0].toUpperCase() : '?',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppTheme.accent,
                            fontSize: 22,
                          ),
                    ),
                  ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: 17,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  user.email,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                      ),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () => context.push('/subscription'),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: planColor.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: planColor.withOpacity(0.3)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          user.planLabel,
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: planColor,
                                    fontSize: 9,
                                    letterSpacing: 1,
                                  ),
                        ),
                        if (user.isFree) ...[
                          const SizedBox(width: 4),
                          Text(
                            '· Upgrade',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: planColor,
                                  fontSize: 9,
                                ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
