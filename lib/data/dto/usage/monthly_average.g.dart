// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_average.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlyAverage _$MonthlyAverageFromJson(Map<String, dynamic> json) =>
    _MonthlyAverage(
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      utilityType: json['utilityType'] as String,
      averageUsage: (json['averageUsage'] as num).toDouble(),
      totalUsage: (json['totalUsage'] as num).toDouble(),
      averageCharge: (json['averageCharge'] as num).toDouble(),
      totalCharge: (json['totalCharge'] as num).toDouble(),
      dataCount: (json['dataCount'] as num).toInt(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$MonthlyAverageToJson(_MonthlyAverage instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'utilityType': instance.utilityType,
      'averageUsage': instance.averageUsage,
      'totalUsage': instance.totalUsage,
      'averageCharge': instance.averageCharge,
      'totalCharge': instance.totalCharge,
      'dataCount': instance.dataCount,
      'unit': instance.unit,
    };

_MonthlyAverageResponse _$MonthlyAverageResponseFromJson(
  Map<String, dynamic> json,
) => _MonthlyAverageResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => MonthlyAverage.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$MonthlyAverageResponseToJson(
  _MonthlyAverageResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};
