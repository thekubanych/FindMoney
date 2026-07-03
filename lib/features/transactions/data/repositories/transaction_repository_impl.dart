import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../datasources/transaction_remote_datasource.dart';
import '../models/transaction_model.dart';
import '../../../../core/network/dio_client.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDataSource _dataSource;

  const TransactionRepositoryImpl(this._dataSource);

  @override
  Future<Either<ApiException, List<Transaction>>> getTransactions({
    int page = 1,
    int limit = 30,
    String? category,
    String? search,
  }) async {
    try {
      final models = await _dataSource.getTransactions(
        page, limit, category, search,
      );
      return Right(models.map((m) => m.toDomain()).toList());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, Transaction>> createTransaction({
    required double amount,
    required TransactionCategory category,
    String? subcategory,
    String? description,
    String? emotionBefore,
    String? emotionAfter,
    DateTime? date,
  }) async {
    try {
      final dto = CreateTransactionDto(
        amount: amount,
        category: category.name,
        subcategory: subcategory,
        description: description,
        emotionBefore: emotionBefore,
        emotionAfter: emotionAfter,
        createdAt: (date ?? DateTime.now()).toIso8601String(),
      );
      final model = await _dataSource.createTransaction(dto);
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, Transaction>> updateTransaction(
    String id, {
    required double amount,
    required TransactionCategory category,
    String? subcategory,
    String? description,
    String? emotionBefore,
    String? emotionAfter,
  }) async {
    try {
      final dto = CreateTransactionDto(
        amount: amount,
        category: category.name,
        subcategory: subcategory,
        description: description,
        emotionBefore: emotionBefore,
        emotionAfter: emotionAfter,
      );
      final model = await _dataSource.updateTransaction(id, dto);
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, void>> deleteTransaction(String id) async {
    try {
      await _dataSource.deleteTransaction(id);
      return const Right(null);
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }

  @override
  Future<Either<ApiException, TransactionStats>> getStats() async {
    try {
      final model = await _dataSource.getStats();
      return Right(model.toDomain());
    } on DioException catch (e) {
      return Left(ApiException.fromDioException(e));
    }
  }
}
