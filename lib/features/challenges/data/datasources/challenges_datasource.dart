import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/challenge_model.dart';

part 'challenges_datasource.g.dart';

@RestApi()
abstract class ChallengesDataSource {
  factory ChallengesDataSource(Dio dio, {String baseUrl}) =
      _ChallengesDataSource;

  @GET('/challenges/stats')
  Future<UserGameStatsModel> getStats();

  @GET('/challenges')
  Future<List<ChallengeModel>> getChallenges();

  @POST('/challenges/{id}/claim')
  Future<ChallengeModel> claimChallenge(@Path('id') String id);
}
