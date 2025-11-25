import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_data.freezed.dart';
part 'usage_data.g.dart';

@freezed
abstract class UsageData with _$UsageData {
  const factory UsageData({
    required int usageId,
    required int userId,
    required String utilityType,
    required double usageAmount,
    required String unit,
    required int currentCharge,
    required String measuredAt,
    required String createdAt,
  }) = _UsageData;

  factory UsageData.fromJson(Map<String, dynamic> json) =>
      _$UsageDataFromJson(json);
}

@freezed
abstract class UsageDataResponse with _$UsageDataResponse {
  const factory UsageDataResponse({
    required bool success,
    required List<UsageData> data,
  }) = _UsageDataResponse;

  factory UsageDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UsageDataResponseFromJson(json);
}
