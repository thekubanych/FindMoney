// ─── Repository interface ─────────────────────────────────────────────────────
import 'package:dartz/dartz.dart';
import '../entities/transaction.dart';
import '../../../../core/network/dio_client.dart';

abstract class TransactionRepository {
  Future<Either<ApiException, List<Transaction>>> getTransactions({
    int page = 1,
    int limit = 30,
    String? category,
    String? search,
  });

  Future<Either<ApiException, Transaction>> createTransaction({
    required double amount,
    required TransactionCategory category,
    String? subcategory,
    String? description,
    String? emotionBefore,
    String? emotionAfter,
    DateTime? date,
  });

  Future<Either<ApiException, Transaction>> updateTransaction(
    String id, {
    required double amount,
    required TransactionCategory category,
    String? subcategory,
    String? description,
    String? emotionBefore,
    String? emotionAfter,
  });

  Future<Either<ApiException, void>> deleteTransaction(String id);

  Future<Either<ApiException, TransactionStats>> getStats();
}
