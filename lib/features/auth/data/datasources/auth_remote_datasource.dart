import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/auth_models.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthRemoteDataSource;

  @POST('/auth/login')
  Future<AuthResponseModel> login(@Body() LoginRequestModel body);

  @POST('/auth/register')
  Future<AuthResponseModel> register(@Body() RegisterRequestModel body);

  @POST('/auth/google')
  Future<AuthResponseModel> loginWithGoogle(
    @Body() GoogleAuthRequestModel body,
  );

  @POST('/auth/logout')
  Future<void> logout();

  @GET('/users/me')
  Future<UserModel> getCurrentUser();
}
