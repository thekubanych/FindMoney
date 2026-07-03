import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/transaction_remote_datasource.dart';
import '../../data/repositories/transaction_repository_impl.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../../../../core/network/dio_client.dart';

part 'transaction_providers.g.dart';

// ─── Infrastructure ───────────────────────────────────────────────────────────

@riverpod
TransactionRemoteDataSource transactionRemoteDataSource(Ref ref) {
  return TransactionRemoteDataSource(ref.watch(dioClientProvider));
}

@riverpod
TransactionRepository transactionRepository(Ref ref) {
  return TransactionRepositoryImpl(ref.watch(transactionRemoteDataSourceProvider));
}

// ─── Filter state ─────────────────────────────────────────────────────────────

@riverpod
class TransactionFilterNotifier extends _$TransactionFilterNotifier {
  @override
  TransactionFilter build() => const TransactionFilter();

  void setCategory(TransactionCategory? category) {
    state = state.copyWith(category: category);
  }

  void setSearch(String? search) {
    state = state.copyWith(search: search);
  }

  void reset() => state = const TransactionFilter();
}

// ─── Transactions list ────────────────────────────────────────────────────────

@riverpod
class TransactionsNotifier extends _$TransactionsNotifier {
  int _page = 1;
  bool _hasMore = true;

  @override
  Future<List<Transaction>> build() async {
    _page = 1;
    _hasMore = true;
    final filter = ref.watch(transactionFilterNotifierProvider);
    return _fetch(filter, reset: true);
  }

  Future<List<Transaction>> _fetch(
    TransactionFilter filter, {
    bool reset = false,
  }) async {
    final repo = ref.read(transactionRepositoryProvider);
    final result = await repo.getTransactions(
      page: reset ? 1 : _page,
      limit: 30,
      category: filter.category?.name,
      search: filter.search,
    );

    return result.fold(
      (e) => throw e,
      (list) {
        if (list.length < 30) _hasMore = false;
        return list;
      },
    );
  }

  Future<void> loadMore() async {
    if (!_hasMore) return;
    final current = state.valueOrNull ?? [];
    _page++;
    final filter = ref.read(transactionFilterNotifierProvider);
    try {
      final more = await _fetch(filter);
      state = AsyncData([...current, ...more]);
    } catch (e) {
      _page--;
    }
  }

  Future<void> addTransaction({
    required double amount,
    required TransactionCategory category,
    String? subcategory,
    String? description,
    String? emotionBefore,
    String? emotionAfter,
    DateTime? date,
  }) async {
    final repo = ref.read(transactionRepositoryProvider);
    final result = await repo.createTransaction(
      amount: amount,
      category: category,
      subcategory: subcategory,
      description: description,
      emotionBefore: emotionBefore,
      emotionAfter: emotionAfter,
      date: date,
    );

    result.fold(
      (e) => throw e,
      (tx) {
        final current = state.valueOrNull ?? [];
        state = AsyncData([tx, ...current]);
        // Invalidate stats and AI reports after new transaction
        ref.invalidate(transactionStatsNotifierProvider);
      },
    );
  }

  Future<void> deleteTransaction(String id) async {
    final repo = ref.read(transactionRepositoryProvider);
    final result = await repo.deleteTransaction(id);
    result.fold(
      (e) => throw e,
      (_) {
        final current = state.valueOrNull ?? [];
        state = AsyncData(current.where((t) => t.id != id).toList());
        ref.invalidate(transactionStatsNotifierProvider);
      },
    );
  }

  bool get hasMore => _hasMore;
}

// ─── Stats ────────────────────────────────────────────────────────────────────

@riverpod
class TransactionStatsNotifier extends _$TransactionStatsNotifier {
  @override
  Future<TransactionStats> build() async {
    final repo = ref.watch(transactionRepositoryProvider);
    final result = await repo.getStats();
    return result.fold((e) => throw e, (s) => s);
  }
}

// ─── Add transaction form state ───────────────────────────────────────────────

@riverpod
class AddTransactionNotifier extends _$AddTransactionNotifier {
  @override
  AddTransactionState build() => const AddTransactionState();

  void setAmount(String raw) {
    final parsed = double.tryParse(raw.replaceAll(',', '.'));
    state = state.copyWith(amount: parsed, amountError: parsed == null ? 'Invalid amount' : null);
  }

  void setCategory(TransactionCategory cat) {
    state = state.copyWith(category: cat);
  }

  void setEmotionBefore(String? e) => state = state.copyWith(emotionBefore: e);
  void setEmotionAfter(String? e) => state = state.copyWith(emotionAfter: e);
  void setDescription(String d) => state = state.copyWith(description: d);
  void setDate(DateTime d) => state = state.copyWith(date: d);

  bool get isValid =>
      state.amount != null && state.amount! > 0 && state.category != null;

  Future<void> submit() async {
    if (!isValid) return;
    state = state.copyWith(isSubmitting: true, submitError: null);
    try {
      await ref.read(transactionsNotifierProvider.notifier).addTransaction(
            amount: state.amount!,
            category: state.category!,
            description: state.description,
            emotionBefore: state.emotionBefore,
            emotionAfter: state.emotionAfter,
            date: state.date,
          );
      state = state.copyWith(isSubmitting: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(
        isSubmitting: false,
        submitError: e.toString(),
      );
    }
  }

  void reset() => state = const AddTransactionState();
}

// ─── Value objects ────────────────────────────────────────────────────────────

class TransactionFilter {
  final TransactionCategory? category;
  final String? search;

  const TransactionFilter({this.category, this.search});

  TransactionFilter copyWith({
    TransactionCategory? category,
    String? search,
  }) =>
      TransactionFilter(
        category: category ?? this.category,
        search: search ?? this.search,
      );
}

class AddTransactionState {
  final double? amount;
  final String? amountError;
  final TransactionCategory? category;
  final String? emotionBefore;
  final String? emotionAfter;
  final String? description;
  final DateTime? date;
  final bool isSubmitting;
  final bool isSuccess;
  final String? submitError;

  const AddTransactionState({
    this.amount,
    this.amountError,
    this.category,
    this.emotionBefore,
    this.emotionAfter,
    this.description,
    this.date,
    this.isSubmitting = false,
    this.isSuccess = false,
    this.submitError,
  });

  AddTransactionState copyWith({
    double? amount,
    String? amountError,
    TransactionCategory? category,
    String? emotionBefore,
    String? emotionAfter,
    String? description,
    DateTime? date,
    bool? isSubmitting,
    bool? isSuccess,
    String? submitError,
  }) =>
      AddTransactionState(
        amount: amount ?? this.amount,
        amountError: amountError ?? this.amountError,
        category: category ?? this.category,
        emotionBefore: emotionBefore ?? this.emotionBefore,
        emotionAfter: emotionAfter ?? this.emotionAfter,
        description: description ?? this.description,
        date: date ?? this.date,
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccess: isSuccess ?? this.isSuccess,
        submitError: submitError ?? this.submitError,
      );
}
