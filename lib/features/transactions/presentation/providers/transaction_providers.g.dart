// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(transactionRemoteDataSource)
final transactionRemoteDataSourceProvider =
    TransactionRemoteDataSourceProvider._();

final class TransactionRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          TransactionRemoteDataSource,
          TransactionRemoteDataSource,
          TransactionRemoteDataSource
        >
    with $Provider<TransactionRemoteDataSource> {
  TransactionRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<TransactionRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionRemoteDataSource create(Ref ref) {
    return transactionRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionRemoteDataSource>(value),
    );
  }
}

String _$transactionRemoteDataSourceHash() =>
    r'4b1238c6fb1fc6d29ea8d8b83995ca1c9f97a1fe';

@ProviderFor(transactionRepository)
final transactionRepositoryProvider = TransactionRepositoryProvider._();

final class TransactionRepositoryProvider
    extends
        $FunctionalProvider<
          TransactionRepository,
          TransactionRepository,
          TransactionRepository
        >
    with $Provider<TransactionRepository> {
  TransactionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionRepositoryHash();

  @$internal
  @override
  $ProviderElement<TransactionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionRepository create(Ref ref) {
    return transactionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionRepository>(value),
    );
  }
}

String _$transactionRepositoryHash() =>
    r'448c81bdf48423476ec36542bfe3d11ce786917e';

@ProviderFor(TransactionFilterNotifier)
final transactionFilterProvider = TransactionFilterNotifierProvider._();

final class TransactionFilterNotifierProvider
    extends $NotifierProvider<TransactionFilterNotifier, TransactionFilter> {
  TransactionFilterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionFilterNotifierHash();

  @$internal
  @override
  TransactionFilterNotifier create() => TransactionFilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionFilter>(value),
    );
  }
}

String _$transactionFilterNotifierHash() =>
    r'2eef017ad858ccefbdc5dd0f88fab5a60896a463';

abstract class _$TransactionFilterNotifier
    extends $Notifier<TransactionFilter> {
  TransactionFilter build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<TransactionFilter, TransactionFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TransactionFilter, TransactionFilter>,
              TransactionFilter,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(TransactionsNotifier)
final transactionsProvider = TransactionsNotifierProvider._();

final class TransactionsNotifierProvider
    extends $AsyncNotifierProvider<TransactionsNotifier, List<Transaction>> {
  TransactionsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionsNotifierHash();

  @$internal
  @override
  TransactionsNotifier create() => TransactionsNotifier();
}

String _$transactionsNotifierHash() =>
    r'42865278b9e11c080cf0e41f6121520968662a9a';

abstract class _$TransactionsNotifier
    extends $AsyncNotifier<List<Transaction>> {
  FutureOr<List<Transaction>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Transaction>>, List<Transaction>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Transaction>>, List<Transaction>>,
              AsyncValue<List<Transaction>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(TransactionStatsNotifier)
final transactionStatsProvider = TransactionStatsNotifierProvider._();

final class TransactionStatsNotifierProvider
    extends $AsyncNotifierProvider<TransactionStatsNotifier, TransactionStats> {
  TransactionStatsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionStatsNotifierHash();

  @$internal
  @override
  TransactionStatsNotifier create() => TransactionStatsNotifier();
}

String _$transactionStatsNotifierHash() =>
    r'4e1ba46dfc6b17bb89266343c806136296d522b9';

abstract class _$TransactionStatsNotifier
    extends $AsyncNotifier<TransactionStats> {
  FutureOr<TransactionStats> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<TransactionStats>, TransactionStats>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TransactionStats>, TransactionStats>,
              AsyncValue<TransactionStats>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(AddTransactionNotifier)
final addTransactionProvider = AddTransactionNotifierProvider._();

final class AddTransactionNotifierProvider
    extends $NotifierProvider<AddTransactionNotifier, AddTransactionState> {
  AddTransactionNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addTransactionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addTransactionNotifierHash();

  @$internal
  @override
  AddTransactionNotifier create() => AddTransactionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddTransactionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddTransactionState>(value),
    );
  }
}

String _$addTransactionNotifierHash() =>
    r'a3ab95dcd64bbc1aab7cbf4ff700a785e7f5eec0';

abstract class _$AddTransactionNotifier extends $Notifier<AddTransactionState> {
  AddTransactionState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AddTransactionState, AddTransactionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddTransactionState, AddTransactionState>,
              AddTransactionState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
