import 'package:dio/dio.dart';
import 'package:hanjeon/data/dto/bill/bill.dart';
import 'package:hanjeon/data/dto/bill/bill_comparison.dart';
import 'package:hanjeon/data/dto/recommendation/recommendation.dart';
import 'package:hanjeon/data/dto/settings/settings.dart';
import 'package:hanjeon/data/dto/usage/monthly_average.dart';
import 'package:retrofit/retrofit.dart';

part 'usage_api_client.g.dart';

@RestApi()
abstract class UsageApiClient {
  factory UsageApiClient(Dio dio, {String? baseUrl}) = _UsageApiClient;

  @GET('/usage-data/users/{userId}/monthly-average')
  Future<MonthlyAverageResponse> getMonthlyAverage(@Path('userId') int userId);

  @GET('/bills/comparison/users/{userId}')
  Future<BillComparisonResponse> getBillComparison(
    @Path('userId') int userId,
    @Query('currentMonth') String currentMonth,
  );

  @GET('/recommendations/users/{userId}')
  Future<RecommendationResponse> getRecommendations(@Path('userId') int userId);

  @GET('/settings/users/{userId}')
  Future<SettingsResponse> getSettings(@Path('userId') int userId);

  @GET('/bills/users/{userId}')
  Future<BillResponse> getBills(@Path('userId') int userId);
}
