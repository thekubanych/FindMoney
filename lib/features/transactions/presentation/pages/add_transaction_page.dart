import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/transaction.dart';
import '../providers/transaction_providers.dart';
import '../widgets/receipt_scanner.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_theme.dart';

class AddTransactionPage extends ConsumerStatefulWidget {
  const AddTransactionPage({super.key});

  @override
  ConsumerState<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends ConsumerState<AddTransactionPage> {
  final _amountController = TextEditingController();
  final _descController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _amountController.dispose();
    _descController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addTransactionNotifierProvider);
    final notifier = ref.read(addTransactionNotifierProvider.notifier);

    // Navigate on success
    ref.listen(addTransactionNotifierProvider, (prev, next) {
      if (next.isSuccess) {
        notifier.reset();
        context.pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Transaction saved'),
            backgroundColor: AppTheme.green.withOpacity(0.9),
          ),
        );
      }
    });

    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(
        title: const Text('Add Transaction'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Receipt OCR scan ───────────────────────────────────────────
            ReceiptScanButton(
              onScanned: (result) {
                if (result.amount != null) {
                  _amountController.text = result.amount!.toStringAsFixed(2);
                  notifier.setAmount(_amountController.text);
                }
                if (result.merchant != null) {
                  _descController.text = result.merchant!;
                  notifier.setDescription(result.merchant!);
                }
                if (result.suggestedCategory != null) {
                  final cat = TransactionCategory.values.firstWhere(
                    (c) => c.name == result.suggestedCategory,
                    orElse: () => TransactionCategory.other,
                  );
                  notifier.setCategory(cat);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Receipt details filled in'),
                    backgroundColor: AppTheme.green.withOpacity(0.9),
                  ),
                );
              },
            ).animate().fadeIn(duration: 250.ms),

            const SizedBox(height: 20),

            // ── Amount ──────────────────────────────────────────────────────
            _SectionLabel(label: 'AMOUNT'),
            _AmountField(
              controller: _amountController,
              error: state.amountError,
              onChanged: notifier.setAmount,
              category: state.category,
            ).animate().fadeIn(duration: 300.ms).slideY(begin: 0.1),

            const SizedBox(height: 28),

            // ── Category ─────────────────────────────────────────────────────
            _SectionLabel(label: 'CATEGORY'),
            _CategoryGrid(
              selected: state.category,
              onSelect: notifier.setCategory,
            ).animate().fadeIn(duration: 300.ms, delay: 60.ms),

            const SizedBox(height: 28),

            // ── Description ──────────────────────────────────────────────────
            _SectionLabel(label: 'DESCRIPTION (OPTIONAL)'),
            TextField(
              controller: _descController,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 14),
              maxLines: 2,
              decoration: const InputDecoration(
                hintText: 'What did you buy?',
              ),
              onChanged: notifier.setDescription,
            ).animate().fadeIn(duration: 300.ms, delay: 90.ms),

            const SizedBox(height: 28),

            // ── Emotion before ───────────────────────────────────────────────
            _SectionLabel(label: 'HOW DID YOU FEEL BEFORE?'),
            _EmotionPicker(
              selected: state.emotionBefore,
              onSelect: notifier.setEmotionBefore,
            ).animate().fadeIn(duration: 300.ms, delay: 120.ms),

            const SizedBox(height: 24),

            // ── Emotion after ─────────────────────────────────────────────────
            _SectionLabel(label: 'HOW DO YOU FEEL AFTER?'),
            _EmotionPicker(
              selected: state.emotionAfter,
              onSelect: notifier.setEmotionAfter,
            ).animate().fadeIn(duration: 300.ms, delay: 150.ms),

            const SizedBox(height: 28),

            // ── AI hint ──────────────────────────────────────────────────────
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppTheme.accentPurple.withOpacity(0.06),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppTheme.accentPurple.withOpacity(0.2),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.psychology_outlined,
                      color: AppTheme.accentPurple, size: 16),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Emotions help AI detect impulsive spending patterns',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 12,
                            color: AppTheme.accentPurple.withOpacity(0.8),
                          ),
                    ),
                  ),
                ],
              ),
            ).animate().fadeIn(duration: 300.ms, delay: 180.ms),

            // ── Error ─────────────────────────────────────────────────────────
            if (state.submitError != null)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  state.submitError!,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppTheme.red,
                        fontSize: 12,
                      ),
                ),
              ),
          ],
        ),
      ),

      // ── Submit button ────────────────────────────────────────────────────────
      bottomSheet: _SubmitBar(
        isLoading: state.isSubmitting,
        isEnabled: notifier.isValid,
        onSubmit: notifier.submit,
      ),
    );
  }
}

// ─── Amount Field ─────────────────────────────────────────────────────────────

class _AmountField extends StatelessWidget {
  final TextEditingController controller;
  final String? error;
  final ValueChanged<String> onChanged;
  final TransactionCategory? category;

  const _AmountField({
    required this.controller,
    required this.error,
    required this.onChanged,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final isIncome = category?.isIncome == true;

    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]')),
      ],
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontSize: 40,
            color: isIncome ? AppTheme.green : AppTheme.textPrimary,
            letterSpacing: -1,
          ),
      decoration: InputDecoration(
        hintText: '0.00',
        hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 40,
              color: AppTheme.textMuted.withOpacity(0.3),
              letterSpacing: -1,
            ),
        prefixText: isIncome ? '+\$ ' : '\$ ',
        prefixStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontSize: 24,
              color: isIncome ? AppTheme.green : AppTheme.textMuted,
            ),
        errorText: error,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: isIncome ? AppTheme.green : AppTheme.accent,
            width: 1.5,
          ),
        ),
        fillColor: Colors.transparent,
        filled: false,
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
      ),
      onChanged: onChanged,
    );
  }
}

// ─── Category Grid ────────────────────────────────────────────────────────────

class _CategoryGrid extends StatelessWidget {
  final TransactionCategory? selected;
  final ValueChanged<TransactionCategory> onSelect;

  const _CategoryGrid({required this.selected, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: TransactionCategory.values.map((cat) {
        final isSelected = cat == selected;
        return GestureDetector(
          onTap: () => onSelect(cat),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
            decoration: BoxDecoration(
              color: isSelected
                  ? (cat.isIncome
                      ? AppTheme.green.withOpacity(0.12)
                      : AppTheme.accent.withOpacity(0.1))
                  : AppTheme.surface,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isSelected
                    ? (cat.isIncome ? AppTheme.green : AppTheme.accent)
                    : AppTheme.border,
                width: isSelected ? 1.5 : 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(cat.emoji, style: const TextStyle(fontSize: 15)),
                const SizedBox(width: 6),
                Text(
                  cat.label,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                        color: isSelected
                            ? (cat.isIncome
                                ? AppTheme.green
                                : AppTheme.accent)
                            : AppTheme.textPrimary,
                        fontWeight: isSelected
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

// ─── Emotion Picker ───────────────────────────────────────────────────────────

class _EmotionPicker extends StatelessWidget {
  final String? selected;
  final ValueChanged<String?> onSelect;

  const _EmotionPicker({required this.selected, required this.onSelect});

  static const _emotionEmojis = {
    'calm': '😌',
    'happy': '😊',
    'stressed': '😤',
    'anxious': '😰',
    'bored': '😑',
    'sad': '😢',
    'excited': '🤩',
    'guilty': '😬',
  };

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: AppConstants.emotions.map((emotion) {
        final isSelected = emotion == selected;
        return GestureDetector(
          onTap: () => onSelect(isSelected ? null : emotion),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 140),
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppTheme.accentPurple.withOpacity(0.12)
                  : AppTheme.surface,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isSelected
                    ? AppTheme.accentPurple
                    : AppTheme.border,
                width: isSelected ? 1.5 : 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _emotionEmojis[emotion] ?? '😶',
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(width: 6),
                Text(
                  emotion[0].toUpperCase() + emotion.substring(1),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                        color: isSelected
                            ? AppTheme.accentPurple
                            : AppTheme.textMuted,
                        fontWeight: isSelected
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

// ─── Section label ────────────────────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  final String label;

  const _SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              letterSpacing: 2,
            ),
      ),
    );
  }
}

// ─── Submit bar ───────────────────────────────────────────────────────────────

class _SubmitBar extends StatelessWidget {
  final bool isLoading;
  final bool isEnabled;
  final VoidCallback onSubmit;

  const _SubmitBar({
    required this.isLoading,
    required this.isEnabled,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        20,
        16,
        20,
        16 + MediaQuery.of(context).viewPadding.bottom,
      ),
      decoration: BoxDecoration(
        color: AppTheme.bg,
        border: const Border(top: BorderSide(color: AppTheme.border)),
      ),
      child: ElevatedButton(
        onPressed: (isEnabled && !isLoading) ? onSubmit : null,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isEnabled ? AppTheme.accent : AppTheme.border,
          disabledBackgroundColor: AppTheme.surfaceElevated,
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : const Text('Save Transaction'),
      ),
    );
  }
}
