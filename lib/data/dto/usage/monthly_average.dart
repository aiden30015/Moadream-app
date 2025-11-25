import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_average.freezed.dart';
part 'monthly_average.g.dart';

@freezed
abstract class MonthlyAverage with _$MonthlyAverage {
  const factory MonthlyAverage({
    required int year,
    required int month,
    required String utilityType,
    required double averageUsage,
    required double totalUsage,
    required double averageCharge,
    required double totalCharge,
    required int dataCount,
    required String unit,
  }) = _MonthlyAverage;

  factory MonthlyAverage.fromJson(Map<String, dynamic> json) =>
      _$MonthlyAverageFromJson(json);
}

@freezed
abstract class MonthlyAverageResponse with _$MonthlyAverageResponse {
  const factory MonthlyAverageResponse({
    required bool success,
    required List<MonthlyAverage> data,
    String? message,
  }) = _MonthlyAverageResponse;

  factory MonthlyAverageResponse.fromJson(Map<String, dynamic> json) =>
      _$MonthlyAverageResponseFromJson(json);
}
