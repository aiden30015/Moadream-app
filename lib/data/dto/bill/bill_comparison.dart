import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_comparison.freezed.dart';
part 'bill_comparison.g.dart';

@freezed
abstract class BillComparison with _$BillComparison {
  const factory BillComparison({
    required String currentMonth,
    required double electricityChangeRate,
    required double waterChangeRate,
    required double gasChangeRate,
    required int electricityCurrentCharge,
    required int waterCurrentCharge,
    required int gasCurrentCharge,
    required int electricityPreviousCharge,
    required int waterPreviousCharge,
    required int gasPreviousCharge,
    required int totalCurrentCharge,
    required int totalPreviousCharge,
    required double totalChangeRate,
  }) = _BillComparison;

  factory BillComparison.fromJson(Map<String, dynamic> json) =>
      _$BillComparisonFromJson(json);
}

@freezed
abstract class BillComparisonResponse with _$BillComparisonResponse {
  const factory BillComparisonResponse({
    required bool success,
    required BillComparison data,
    String? message,
  }) = _BillComparisonResponse;

  factory BillComparisonResponse.fromJson(Map<String, dynamic> json) =>
      _$BillComparisonResponseFromJson(json);
}
