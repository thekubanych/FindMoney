import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../../data/datasources/challenges_datasource.dart';
import '../../domain/entities/challenge.dart';
import '../../../../core/network/dio_client.dart';

part 'challenges_providers.g.dart';

@riverpod
ChallengesDataSource challengesDataSource(Ref ref) =>
    ChallengesDataSource(ref.watch(dioClientProvider));

@riverpod
class ChallengesNotifier extends _$ChallengesNotifier {
  @override
  Future<UserGameStats> build() => _fetch();

  Future<UserGameStats> _fetch() async {
    final ds = ref.read(challengesDataSourceProvider);
    try {
      final model = await ds.getStats();
      return model.toDomain();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> claim(String challengeId) async {
    final ds = ref.read(challengesDataSourceProvider);
    try {
      await ds.claimChallenge(challengeId);
      state = await AsyncValue.guard(_fetch);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }
}
