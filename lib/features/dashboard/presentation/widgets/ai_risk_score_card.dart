import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:math' as math;
import '../../../../core/theme/app_theme.dart';

class AiRiskScoreCard extends StatelessWidget {
  final int riskScore;
  final int emotionalScore;
  final VoidCallback onTap;

  const AiRiskScoreCard({
    super.key,
    required this.riskScore,
    required this.emotionalScore,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final riskColor = AppTheme.riskColor(riskScore);
    final riskLabel = riskScore < 30
        ? 'LOW RISK'
        : riskScore < 60
            ? 'MEDIUM RISK'
            : 'HIGH RISK';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppTheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: riskScore > 60
                ? AppTheme.red.withOpacity(0.4)
                : AppTheme.border,
          ),
        ),
        child: Row(
          children: [
            // Circular score dial
            SizedBox(
              width: 80,
              height: 80,
              child: CustomPaint(
                painter: _ScoreDialPainter(
                  score: riskScore,
                  color: riskColor,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$riskScore',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 22,
                                  color: riskColor,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -1,
                                ),
                      ),
                    ],
                  ),
                ),
              )
                  .animate()
                  .scale(
                    begin: const Offset(0.8, 0.8),
                    duration: 600.ms,
                    curve: Curves.easeOutBack,
                  ),
            ),

            const SizedBox(width: 20),

            // Labels
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: riskColor,
                          shape: BoxShape.circle,
                        ),
                      )
                          .animate(onPlay: (c) => c.repeat())
                          .scale(
                            duration: 1000.ms,
                            curve: Curves.easeInOut,
                          )
                          .then()
                          .scale(
                            begin: const Offset(1.3, 1.3),
                            end: const Offset(1.0, 1.0),
                            duration: 1000.ms,
                          ),
                      const SizedBox(width: 8),
                      Text(
                        riskLabel,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: riskColor,
                              letterSpacing: 1.5,
                            ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'AI Risk Score',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    riskScore < 30
                        ? 'Your finances look stable'
                        : riskScore < 60
                            ? 'Some patterns detected'
                            : 'Behavioral risks detected',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 12,
                        ),
                  ),

                  const SizedBox(height: 12),

                  // Emotional score mini bar
                  Row(
                    children: [
                      Text(
                        'EMOTIONAL',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontSize: 9,
                            ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: LinearProgressIndicator(
                            value: emotionalScore / 100,
                            backgroundColor: AppTheme.border,
                            valueColor: AlwaysStoppedAnimation(
                              emotionalScore > 60
                                  ? AppTheme.red
                                  : AppTheme.yellow,
                            ),
                            minHeight: 4,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$emotionalScore',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: emotionalScore > 60
                                  ? AppTheme.red
                                  : AppTheme.yellow,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Arrow
            const Icon(
              Icons.chevron_right_rounded,
              color: AppTheme.textMuted,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class _ScoreDialPainter extends CustomPainter {
  final int score;
  final Color color;

  _ScoreDialPainter({required this.score, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 6;
    const startAngle = -math.pi * 0.75;
    const sweepTotal = math.pi * 1.5;

    // Track
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepTotal,
      false,
      Paint()
        ..color = AppTheme.border
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6
        ..strokeCap = StrokeCap.round,
    );

    // Progress
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepTotal * (score / 100),
      false,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(_ScoreDialPainter old) =>
      old.score != score || old.color != color;
}
