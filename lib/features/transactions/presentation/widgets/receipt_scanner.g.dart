// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_scanner.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReceiptOcrNotifier)
final receiptOcrProvider = ReceiptOcrNotifierProvider._();

final class ReceiptOcrNotifierProvider
    extends $NotifierProvider<ReceiptOcrNotifier, AsyncValue<OcrResult?>> {
  ReceiptOcrNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'receiptOcrProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$receiptOcrNotifierHash();

  @$internal
  @override
  ReceiptOcrNotifier create() => ReceiptOcrNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<OcrResult?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<OcrResult?>>(value),
    );
  }
}

String _$receiptOcrNotifierHash() =>
    r'88017602ad519b0ea1a3182209639c0f6403514d';

abstract class _$ReceiptOcrNotifier extends $Notifier<AsyncValue<OcrResult?>> {
  AsyncValue<OcrResult?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<OcrResult?>, AsyncValue<OcrResult?>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<OcrResult?>, AsyncValue<OcrResult?>>,
              AsyncValue<OcrResult?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
