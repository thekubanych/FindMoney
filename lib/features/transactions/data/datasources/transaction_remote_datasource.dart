import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/transaction_model.dart';

part 'transaction_remote_datasource.g.dart';

@RestApi()
abstract class TransactionRemoteDataSource {
  factory TransactionRemoteDataSource(Dio dio, {String baseUrl}) =
      _TransactionRemoteDataSource;

  @GET('/transactions')
  Future<List<TransactionModel>> getTransactions(
    @Query('page') int page,
    @Query('limit') int limit,
    @Query('category') String? category,
    @Query('search') String? search,
  );

  @POST('/transactions')
  Future<TransactionModel> createTransaction(
    @Body() CreateTransactionDto dto,
  );

  @PUT('/transactions/{id}')
  Future<TransactionModel> updateTransaction(
    @Path('id') String id,
    @Body() CreateTransactionDto dto,
  );

  @DELETE('/transactions/{id}')
  Future<void> deleteTransaction(@Path('id') String id);

  @GET('/transactions/stats')
  Future<TransactionStatsModel> getStats();
}
