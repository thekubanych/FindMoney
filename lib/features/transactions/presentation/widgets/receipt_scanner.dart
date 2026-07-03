import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/theme/app_theme.dart';

part 'receipt_scanner.g.dart';

// ─── OCR result model ──────────────────────────────────────────────────────────

class OcrResult {
  final double? amount;
  final String? merchant;
  final String? suggestedCategory;
  final DateTime? date;

  const OcrResult({this.amount, this.merchant, this.suggestedCategory, this.date});
}

// ─── OCR service provider ───────────────────────────────────────────────────────

@riverpod
class ReceiptOcrNotifier extends _$ReceiptOcrNotifier {
  @override
  AsyncValue<OcrResult?> build() => const AsyncData(null);

  Future<void> scanReceipt(File imageFile) async {
    state = const AsyncLoading();
    try {
      final dio = ref.read(dioClientProvider);
      final formData = FormData.fromMap({
        'receipt': await MultipartFile.fromFile(imageFile.path),
      });

      final response = await dio.post('/ai/ocr-receipt', data: formData);
      final data = response.data as Map<String, dynamic>;

      state = AsyncData(OcrResult(
        amount: (data['amount'] as num?)?.toDouble(),
        merchant: data['merchant'] as String?,
        suggestedCategory: data['suggested_category'] as String?,
        date: data['date'] != null ? DateTime.tryParse(data['date']) : null,
      ));
    } on DioException catch (e) {
      state = AsyncError(
        ApiException.fromDioException(e),
        StackTrace.current,
      );
    }
  }

  void reset() => state = const AsyncData(null);
}

// ─── Receipt scan button + result preview widget ────────────────────────────────

class ReceiptScanButton extends ConsumerWidget {
  final void Function(OcrResult result) onScanned;

  const ReceiptScanButton({super.key, required this.onScanned});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ocrState = ref.watch(receiptOcrNotifierProvider);

    ref.listen(receiptOcrNotifierProvider, (prev, next) {
      next.whenData((result) {
        if (result != null) onScanned(result);
      });
    });

    return GestureDetector(
      onTap: ocrState is AsyncLoading
          ? null
          : () => _pickAndScan(context, ref),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: AppTheme.accentCyan.withOpacity(0.08),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppTheme.accentCyan.withOpacity(0.3)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (ocrState is AsyncLoading)
              const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppTheme.accentCyan,
                ),
              )
            else
              const Icon(Icons.document_scanner_outlined,
                  color: AppTheme.accentCyan, size: 18),
            const SizedBox(width: 10),
            Text(
              ocrState is AsyncLoading
                  ? 'Scanning receipt...'
                  : 'Scan Receipt (OCR)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppTheme.accentCyan,
                    fontSize: 13,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickAndScan(BuildContext context, WidgetRef ref) async {
    final picker = ImagePicker();
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      backgroundColor: AppTheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined,
                  color: AppTheme.accentCyan),
              title: const Text('Take Photo'),
              onTap: () => Navigator.pop(ctx, ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library_outlined,
                  color: AppTheme.accentCyan),
              title: const Text('Choose from Gallery'),
              onTap: () => Navigator.pop(ctx, ImageSource.gallery),
            ),
          ],
        ),
      ),
    );

    if (source == null) return;

    final picked = await picker.pickImage(
      source: source,
      maxWidth: 1600,
      imageQuality: 85,
    );

    if (picked != null) {
      await ref
          .read(receiptOcrNotifierProvider.notifier)
          .scanReceipt(File(picked.path));
    }
  }
}

// ─── OCR result preview card ──────────────────────────────────────────────────

class OcrResultPreview extends StatelessWidget {
  final OcrResult result;
  final VoidCallback onDismiss;

  const OcrResultPreview({
    super.key,
    required this.result,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: AppTheme.green.withOpacity(0.06),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppTheme.green.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.check_circle_outline,
              color: AppTheme.green, size: 16),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Receipt scanned',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 12,
                        color: AppTheme.green,
                      ),
                ),
                if (result.merchant != null)
                  Text(
                    '${result.merchant} · \$${result.amount?.toStringAsFixed(2) ?? '?'}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 11,
                        ),
                  ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onDismiss,
            child: const Icon(Icons.close, size: 14, color: AppTheme.textMuted),
          ),
        ],
      ),
    );
  }
}
