import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/dashboard_model.dart';

part 'dashboard_datasource.g.dart';

@RestApi()
abstract class DashboardDataSource {
  factory DashboardDataSource(Dio dio, {String baseUrl}) = _DashboardDataSource;

  @GET('/dashboard')
  Future<DashboardModel> getDashboard();
}
